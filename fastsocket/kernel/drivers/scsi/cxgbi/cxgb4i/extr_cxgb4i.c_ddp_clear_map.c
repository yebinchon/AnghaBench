
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbi_hba {int port_id; int cdev; } ;


 unsigned int ULPMEM_IDATA_MAX_NPPODS ;
 int ddp_ppod_write_idata (int ,int ,int *,unsigned int,unsigned int,int *,int ) ;

__attribute__((used)) static void ddp_clear_map(struct cxgbi_hba *chba, unsigned int tag,
     unsigned int idx, unsigned int npods)
{
 unsigned int i, cnt;
 int err;

 for (i = 0; i < npods; i += cnt, idx += cnt) {
  cnt = npods - i;
  if (cnt > ULPMEM_IDATA_MAX_NPPODS)
   cnt = ULPMEM_IDATA_MAX_NPPODS;
  err = ddp_ppod_write_idata(chba->cdev, chba->port_id, ((void*)0),
     idx, cnt, ((void*)0), 0);
  if (err < 0)
   break;
 }
}
