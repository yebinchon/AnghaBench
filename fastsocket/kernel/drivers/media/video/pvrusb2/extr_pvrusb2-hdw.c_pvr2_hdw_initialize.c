
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {void (* state_func ) (void*) ;int flag_init_ok; int big_lock; void* state_data; scalar_t__ flag_disconnected; } ;


 int LOCK_GIVE (int ) ;
 int LOCK_TAKE (int ) ;
 int pvr2_hdw_setup (struct pvr2_hdw*) ;

int pvr2_hdw_initialize(struct pvr2_hdw *hdw,
   void (*callback_func)(void *),
   void *callback_data)
{
 LOCK_TAKE(hdw->big_lock); do {
  if (hdw->flag_disconnected) {






   break;
  }
  hdw->state_data = callback_data;
  hdw->state_func = callback_func;
  pvr2_hdw_setup(hdw);
 } while (0); LOCK_GIVE(hdw->big_lock);
 return hdw->flag_init_ok;
}
