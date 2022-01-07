
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbi_sock {int port_id; int cdev; } ;
struct cxgbi_pagepod_hdr {int dummy; } ;
struct cxgbi_gather_list {int dummy; } ;


 unsigned int ULPMEM_IDATA_MAX_NPPODS ;
 int ddp_ppod_write_idata (int ,int ,struct cxgbi_pagepod_hdr*,unsigned int,unsigned int,struct cxgbi_gather_list*,int) ;

__attribute__((used)) static int ddp_set_map(struct cxgbi_sock *csk, struct cxgbi_pagepod_hdr *hdr,
   unsigned int idx, unsigned int npods,
   struct cxgbi_gather_list *gl)
{
 unsigned int i, cnt;
 int err = 0;

 for (i = 0; i < npods; i += cnt, idx += cnt) {
  cnt = npods - i;
  if (cnt > ULPMEM_IDATA_MAX_NPPODS)
   cnt = ULPMEM_IDATA_MAX_NPPODS;
  err = ddp_ppod_write_idata(csk->cdev, csk->port_id, hdr,
     idx, cnt, gl, 4 * i);
  if (err < 0)
   break;
 }
 return err;
}
