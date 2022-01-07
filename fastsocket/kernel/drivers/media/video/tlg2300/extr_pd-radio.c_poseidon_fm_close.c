
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radio_data {scalar_t__ users; scalar_t__ is_radio_streaming; } ;
struct poseidon {int kref; int lock; int interface; struct file* file_for_stream; int state; struct radio_data radio_data; } ;
struct file {struct poseidon* private_data; } ;


 int PLAY_SERVICE ;
 int POSEIDON_STATE_FM ;
 int TLG_TUNE_PLAY_SVC_STOP ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int poseidon_delete ;
 int send_set_req (struct poseidon*,int ,int ,int *) ;
 int usb_autopm_put_interface (int ) ;

__attribute__((used)) static int poseidon_fm_close(struct file *filp)
{
 struct poseidon *p = filp->private_data;
 struct radio_data *fm = &p->radio_data;
 uint32_t status;

 mutex_lock(&p->lock);
 fm->users--;
 if (0 == fm->users)
  p->state &= ~POSEIDON_STATE_FM;

 if (fm->is_radio_streaming && filp == p->file_for_stream) {
  fm->is_radio_streaming = 0;
  send_set_req(p, PLAY_SERVICE, TLG_TUNE_PLAY_SVC_STOP, &status);
 }
 usb_autopm_put_interface(p->interface);
 mutex_unlock(&p->lock);

 kref_put(&p->kref, poseidon_delete);
 filp->private_data = ((void*)0);
 return 0;
}
