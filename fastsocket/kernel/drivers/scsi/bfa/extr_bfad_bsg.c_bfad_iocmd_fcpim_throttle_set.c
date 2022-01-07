
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfad_s {int bfad_lock; int bfa; } ;
struct TYPE_2__ {int cfg_value; } ;
struct bfa_bsg_fcpim_throttle_s {TYPE_1__ throttle; int status; } ;


 int bfa_fcpim_throttle_set (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
bfad_iocmd_fcpim_throttle_set(struct bfad_s *bfad, void *cmd)
{
 struct bfa_bsg_fcpim_throttle_s *iocmd =
   (struct bfa_bsg_fcpim_throttle_s *)cmd;
 unsigned long flags;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 iocmd->status = bfa_fcpim_throttle_set(&bfad->bfa,
    iocmd->throttle.cfg_value);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);

 return 0;
}
