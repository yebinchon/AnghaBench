
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int bfad_lock; int bfa; } ;
struct bfa_bsg_diag_beacon_s {int second; int link_e2e_beacon; int beacon; int status; } ;


 int BFA_DIAG_MOD (int *) ;
 int bfa_diag_beacon_port (int ,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
bfad_iocmd_diag_beacon_lport(struct bfad_s *bfad, void *cmd)
{
 struct bfa_bsg_diag_beacon_s *iocmd =
   (struct bfa_bsg_diag_beacon_s *)cmd;
 unsigned long flags;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 iocmd->status = bfa_diag_beacon_port(BFA_DIAG_MOD(&bfad->bfa),
    iocmd->beacon, iocmd->link_e2e_beacon,
    iocmd->second);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);
 return 0;
}
