
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DPRINT (char*,char const*) ;
 int command_status ;
 int fd_timeout ;
 int fdc_busy ;
 scalar_t__ test_bit (int ,int *) ;
 int timer_pending (int *) ;

__attribute__((used)) static void is_alive(const char *message)
{

 if (test_bit(0, &fdc_busy) && command_status < 2
     && !timer_pending(&fd_timeout)) {
  DPRINT("timeout handler died: %s\n", message);
 }
}
