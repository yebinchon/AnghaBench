
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_fcp_pkt {int lp; int ref_cnt; } ;
struct fc_fcp_internal {int scsi_pkt_pool; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 struct fc_fcp_internal* fc_get_scsi_internal (int ) ;
 int mempool_free (struct fc_fcp_pkt*,int ) ;

__attribute__((used)) static void fc_fcp_pkt_release(struct fc_fcp_pkt *fsp)
{
 if (atomic_dec_and_test(&fsp->ref_cnt)) {
  struct fc_fcp_internal *si = fc_get_scsi_internal(fsp->lp);

  mempool_free(fsp, si->scsi_pkt_pool);
 }
}
