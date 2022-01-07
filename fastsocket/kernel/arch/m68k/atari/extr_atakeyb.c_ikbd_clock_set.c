
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ikbd_write (char*,int) ;

void ikbd_clock_set(int year, int month, int day, int hour, int minute, int second)
{
 char cmd[7] = { 0x1B, year, month, day, hour, minute, second };

 ikbd_write(cmd, 7);
}
