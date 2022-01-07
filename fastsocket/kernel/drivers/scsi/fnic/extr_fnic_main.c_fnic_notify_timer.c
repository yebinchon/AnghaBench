
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fnic {int notify_timer; } ;


 scalar_t__ FNIC_NOTIFY_TIMER_PERIOD ;
 int fnic_handle_link_event (struct fnic*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,int ) ;
 int round_jiffies (scalar_t__) ;

__attribute__((used)) static void fnic_notify_timer(unsigned long data)
{
 struct fnic *fnic = (struct fnic *)data;

 fnic_handle_link_event(fnic);
 mod_timer(&fnic->notify_timer,
    round_jiffies(jiffies + FNIC_NOTIFY_TIMER_PERIOD));
}
