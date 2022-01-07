
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ulp_mem_io {int dummy; } ;
struct sk_buff {int priority; } ;
struct cxgbi_hba {struct cxgbi_device* cdev; } ;
struct cxgbi_device {int lldev; struct cxgbi_ddp_info* ddp; } ;
struct cxgbi_ddp_info {unsigned int llimit; } ;


 int CPL_PRIORITY_CONTROL ;
 int CXGBI_DBG_DDP ;
 int GFP_ATOMIC ;
 scalar_t__ PPOD_SIZE ;
 unsigned int PPOD_SIZE_SHIFT ;
 struct sk_buff* alloc_wr (scalar_t__,int ,int ) ;
 int cxgb3_ofld_send (int ,struct sk_buff*) ;
 int log_debug (int,char*,struct cxgbi_device*,unsigned int,unsigned int,unsigned int) ;
 int pr_err (char*,unsigned int,unsigned int,int,unsigned int) ;
 int ulp_mem_io_set_hdr (struct sk_buff*,unsigned int) ;

__attribute__((used)) static void ddp_clear_map(struct cxgbi_hba *chba, unsigned int tag,
     unsigned int idx, unsigned int npods)
{
 struct cxgbi_device *cdev = chba->cdev;
 struct cxgbi_ddp_info *ddp = cdev->ddp;
 unsigned int pm_addr = (idx << PPOD_SIZE_SHIFT) + ddp->llimit;
 int i;

 log_debug(1 << CXGBI_DBG_DDP,
  "cdev 0x%p, idx %u, npods %u, tag 0x%x.\n",
  cdev, idx, npods, tag);

 for (i = 0; i < npods; i++, idx++, pm_addr += PPOD_SIZE) {
  struct sk_buff *skb = alloc_wr(sizeof(struct ulp_mem_io) +
      PPOD_SIZE, 0, GFP_ATOMIC);

  if (!skb) {
   pr_err("tag 0x%x, 0x%x, %d/%u, skb OOM.\n",
    tag, idx, i, npods);
   continue;
  }
  ulp_mem_io_set_hdr(skb, pm_addr);
  skb->priority = CPL_PRIORITY_CONTROL;
  cxgb3_ofld_send(cdev->lldev, skb);
 }
}
