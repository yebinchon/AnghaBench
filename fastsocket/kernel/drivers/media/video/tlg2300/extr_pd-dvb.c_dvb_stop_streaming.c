
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poseidon {int lock; } ;
struct pd_dvb_adapter {scalar_t__* urb_array; scalar_t__ is_streaming; struct poseidon* pd_device; } ;
typedef size_t s32 ;


 size_t DVB_SBUF_NUM ;
 int PLAY_SERVICE ;
 int TLG_TUNE_PLAY_SVC_STOP ;
 int log (char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 size_t send_set_req (struct poseidon*,int ,int ,size_t*) ;
 int usb_kill_urb (scalar_t__) ;

void dvb_stop_streaming(struct pd_dvb_adapter *pd_dvb)
{
 struct poseidon *pd = pd_dvb->pd_device;

 mutex_lock(&pd->lock);
 if (pd_dvb->is_streaming) {
  s32 i, ret, cmd_status = 0;

  pd_dvb->is_streaming = 0;

  for (i = 0; i < DVB_SBUF_NUM; i++)
   if (pd_dvb->urb_array[i])
    usb_kill_urb(pd_dvb->urb_array[i]);

  ret = send_set_req(pd, PLAY_SERVICE, TLG_TUNE_PLAY_SVC_STOP,
     &cmd_status);
  if (ret | cmd_status)
   log("error");
 }
 mutex_unlock(&pd->lock);
}
