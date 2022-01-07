
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poseidon {int state; } ;
typedef scalar_t__ s32 ;


 int ENODEV ;
 int ENXIO ;
 int POSEIDON_STATE_DISCONNECT ;
 int TUNE_MODE_SELECT ;
 scalar_t__ send_set_req (struct poseidon*,int ,unsigned char,scalar_t__*) ;

int set_tuner_mode(struct poseidon *pd, unsigned char mode)
{
 s32 ret, cmd_status;

 if (pd->state & POSEIDON_STATE_DISCONNECT)
  return -ENODEV;

 ret = send_set_req(pd, TUNE_MODE_SELECT, mode, &cmd_status);
 if (ret || cmd_status)
  return -ENXIO;
 return 0;
}
