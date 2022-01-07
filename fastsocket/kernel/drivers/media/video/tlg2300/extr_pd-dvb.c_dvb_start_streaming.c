
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poseidon {int state; int lock; } ;
struct pd_dvb_adapter {int is_streaming; int * urb_array; struct poseidon* pd_device; } ;
typedef int s32 ;


 int DVB_SBUF_NUM ;
 int ENODEV ;
 int GFP_KERNEL ;
 int PLAY_SERVICE ;
 int POSEIDON_STATE_DISCONNECT ;
 int dvb_urb_init (struct pd_dvb_adapter*) ;
 int log (char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int send_set_req (struct poseidon*,int ,int,int*) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static s32 dvb_start_streaming(struct pd_dvb_adapter *pd_dvb)
{
 struct poseidon *pd = pd_dvb->pd_device;
 int ret = 0;

 if (pd->state & POSEIDON_STATE_DISCONNECT)
  return -ENODEV;

 mutex_lock(&pd->lock);
 if (!pd_dvb->is_streaming) {
  s32 i, cmd_status = 0;





  ret = send_set_req(pd, PLAY_SERVICE, 1, &cmd_status);
  if (ret | cmd_status)
   goto out;

  ret = dvb_urb_init(pd_dvb);
  if (ret < 0)
   goto out;

  pd_dvb->is_streaming = 1;
  for (i = 0; i < DVB_SBUF_NUM; i++) {
   ret = usb_submit_urb(pd_dvb->urb_array[i],
             GFP_KERNEL);
   if (ret) {
    log(" submit urb error %d", ret);
    goto out;
   }
  }
 }
out:
 mutex_unlock(&pd->lock);
 return ret;
}
