
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wl3501_card {int wait; int sig_get_confirm; } ;


 int dprintk (int,char*) ;
 int wake_up (int *) ;
 int wl3501_get_from_wla (struct wl3501_card*,int ,int *,int) ;

__attribute__((used)) static inline void wl3501_get_confirm_interrupt(struct wl3501_card *this,
      u16 addr, void *sig, int size)
{
 dprintk(3, "entry");
 wl3501_get_from_wla(this, addr, &this->sig_get_confirm,
       sizeof(this->sig_get_confirm));
 wake_up(&this->wait);
}
