
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ expires; } ;
struct TYPE_4__ {scalar_t__ motor; } ;


 int add_timer (TYPE_2__*) ;
 int fd_deselect (unsigned long) ;
 int fd_select (unsigned long) ;
 scalar_t__ jiffies ;
 TYPE_2__* motor_off_timer ;
 int try_fdc (unsigned long) ;
 int udelay (int) ;
 TYPE_1__* unit ;

__attribute__((used)) static void fd_motor_off(unsigned long drive)
{
 long calledfromint;





 calledfromint = drive & 0x80000000;
 drive&=3;
 if (calledfromint && !try_fdc(drive)) {

  motor_off_timer[drive].expires = jiffies + 1;
  add_timer(motor_off_timer + drive);
  return;
 }
 unit[drive].motor = 0;
 fd_select(drive);
 udelay (1);
 fd_deselect(drive);
}
