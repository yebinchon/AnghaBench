
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ulp_mem_io {int dummy; } ;
struct sk_buff {int priority; scalar_t__ head; } ;
struct cxgbi_sock {struct cxgbi_device* cdev; } ;
struct cxgbi_pagepod_hdr {int dummy; } ;
struct cxgbi_pagepod {int dummy; } ;
struct cxgbi_gather_list {int dummy; } ;
struct cxgbi_device {int lldev; struct cxgbi_ddp_info* ddp; } ;
struct cxgbi_ddp_info {unsigned int llimit; } ;


 int CPL_PRIORITY_CONTROL ;
 int CXGBI_DBG_DDP ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int PPOD_PAGES_MAX ;
 scalar_t__ PPOD_SIZE ;
 unsigned int PPOD_SIZE_SHIFT ;
 struct sk_buff* alloc_wr (scalar_t__,int ,int ) ;
 int cxgb3_ofld_send (int ,struct sk_buff*) ;
 int cxgbi_ddp_ppod_set (struct cxgbi_pagepod*,struct cxgbi_pagepod_hdr*,struct cxgbi_gather_list*,int) ;
 int log_debug (int,char*,struct cxgbi_sock*,unsigned int,unsigned int,struct cxgbi_gather_list*) ;
 int ulp_mem_io_set_hdr (struct sk_buff*,unsigned int) ;

__attribute__((used)) static int ddp_set_map(struct cxgbi_sock *csk, struct cxgbi_pagepod_hdr *hdr,
   unsigned int idx, unsigned int npods,
    struct cxgbi_gather_list *gl)
{
 struct cxgbi_device *cdev = csk->cdev;
 struct cxgbi_ddp_info *ddp = cdev->ddp;
 unsigned int pm_addr = (idx << PPOD_SIZE_SHIFT) + ddp->llimit;
 int i;

 log_debug(1 << CXGBI_DBG_DDP,
  "csk 0x%p, idx %u, npods %u, gl 0x%p.\n",
  csk, idx, npods, gl);

 for (i = 0; i < npods; i++, idx++, pm_addr += PPOD_SIZE) {
  struct sk_buff *skb = alloc_wr(sizeof(struct ulp_mem_io) +
      PPOD_SIZE, 0, GFP_ATOMIC);

  if (!skb)
   return -ENOMEM;

  ulp_mem_io_set_hdr(skb, pm_addr);
  cxgbi_ddp_ppod_set((struct cxgbi_pagepod *)(skb->head +
     sizeof(struct ulp_mem_io)),
       hdr, gl, i * PPOD_PAGES_MAX);
  skb->priority = CPL_PRIORITY_CONTROL;
  cxgb3_ofld_send(cdev->lldev, skb);
 }
 return 0;
}
