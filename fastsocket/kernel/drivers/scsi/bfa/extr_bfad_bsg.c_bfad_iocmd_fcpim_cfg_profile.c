
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; } ;
struct bfad_s {int bfad_lock; int bfa; } ;
struct bfa_bsg_fcpim_profile_s {int status; } ;


 unsigned int IOCMD_FCPIM_PROFILE_OFF ;
 unsigned int IOCMD_FCPIM_PROFILE_ON ;
 int bfa_fcpim_profile_off (int *) ;
 int bfa_fcpim_profile_on (int *,int ) ;
 int do_gettimeofday (struct timeval*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
bfad_iocmd_fcpim_cfg_profile(struct bfad_s *bfad, void *cmd, unsigned int v_cmd)
{
 struct bfa_bsg_fcpim_profile_s *iocmd =
    (struct bfa_bsg_fcpim_profile_s *)cmd;
 struct timeval tv;
 unsigned long flags;

 do_gettimeofday(&tv);
 spin_lock_irqsave(&bfad->bfad_lock, flags);
 if (v_cmd == IOCMD_FCPIM_PROFILE_ON)
  iocmd->status = bfa_fcpim_profile_on(&bfad->bfa, tv.tv_sec);
 else if (v_cmd == IOCMD_FCPIM_PROFILE_OFF)
  iocmd->status = bfa_fcpim_profile_off(&bfad->bfa);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);

 return 0;
}
