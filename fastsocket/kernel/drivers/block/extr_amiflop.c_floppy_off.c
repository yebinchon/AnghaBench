
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int data; } ;


 int HZ ;
 scalar_t__ jiffies ;
 int mod_timer (TYPE_1__*,scalar_t__) ;
 TYPE_1__* motor_off_timer ;

__attribute__((used)) static void floppy_off (unsigned int nr)
{
 int drive;

 drive = nr & 3;

 motor_off_timer[drive].data = nr | 0x80000000;
 mod_timer(motor_off_timer + drive, jiffies + 3*HZ);
}
