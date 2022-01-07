
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poseidon_audio {scalar_t__* urb_array; } ;
struct poseidon {struct poseidon_audio audio; } ;


 int AUDIO_BUFS ;
 int free_all_urb_generic (scalar_t__*,int) ;
 int logpm () ;
 int usb_kill_urb (scalar_t__) ;

__attribute__((used)) static int audio_buf_free(struct poseidon *p)
{
 struct poseidon_audio *pa = &p->audio;
 int i;

 for (i = 0; i < AUDIO_BUFS; i++)
  if (pa->urb_array[i])
   usb_kill_urb(pa->urb_array[i]);
 free_all_urb_generic(pa->urb_array, AUDIO_BUFS);
 logpm();
 return 0;
}
