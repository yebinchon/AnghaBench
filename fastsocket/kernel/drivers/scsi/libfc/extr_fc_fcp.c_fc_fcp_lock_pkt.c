
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_fcp_pkt {int state; int scsi_pkt_lock; } ;


 int EPERM ;
 int FC_SRB_COMPL ;
 int fc_fcp_pkt_hold (struct fc_fcp_pkt*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static inline int fc_fcp_lock_pkt(struct fc_fcp_pkt *fsp)
{
 spin_lock_bh(&fsp->scsi_pkt_lock);
 if (fsp->state & FC_SRB_COMPL) {
  spin_unlock_bh(&fsp->scsi_pkt_lock);
  return -EPERM;
 }

 fc_fcp_pkt_hold(fsp);
 return 0;
}
