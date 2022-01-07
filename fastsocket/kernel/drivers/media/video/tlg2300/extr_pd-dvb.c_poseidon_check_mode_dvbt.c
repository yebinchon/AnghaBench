
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poseidon {int udev; } ;
typedef int s32 ;


 int BULK_ALTERNATE_IFACE ;
 int HZ ;
 int SGNL_SRC_SEL ;
 int TASK_INTERRUPTIBLE ;
 int TLG_MODE_CAPS_DVB_T ;
 int TLG_SIG_SRC_ANTENNA ;
 int schedule_timeout (int) ;
 int send_set_req (struct poseidon*,int ,int ,int*) ;
 int set_current_state (int ) ;
 int set_tuner_mode (struct poseidon*,int ) ;
 int usb_set_interface (int ,int ,int ) ;

__attribute__((used)) static int poseidon_check_mode_dvbt(struct poseidon *pd)
{
 s32 ret = 0, cmd_status = 0;

 set_current_state(TASK_INTERRUPTIBLE);
 schedule_timeout(HZ/4);

 ret = usb_set_interface(pd->udev, 0, BULK_ALTERNATE_IFACE);
 if (ret != 0)
  return ret;

 ret = set_tuner_mode(pd, TLG_MODE_CAPS_DVB_T);
 if (ret)
  return ret;


 ret = send_set_req(pd, SGNL_SRC_SEL, TLG_SIG_SRC_ANTENNA, &cmd_status);
 if (ret|cmd_status)
  return ret;

 return 0;
}
