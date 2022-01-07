
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int bfad_lock; int bfa; } ;
struct bfa_bsg_fruvpd_max_size_s {int max_size; int status; } ;


 int BFA_FRU (int *) ;
 int bfa_fruvpd_get_max_size (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
bfad_iocmd_fruvpd_get_max_size(struct bfad_s *bfad, void *cmd)
{
 struct bfa_bsg_fruvpd_max_size_s *iocmd =
   (struct bfa_bsg_fruvpd_max_size_s *)cmd;
 unsigned long flags = 0;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 iocmd->status = bfa_fruvpd_get_max_size(BFA_FRU(&bfad->bfa),
      &iocmd->max_size);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);

 return 0;
}
