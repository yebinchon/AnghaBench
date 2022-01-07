
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ikbd_write (char const*,int) ;

void ikbd_clock_get(int *year, int *month, int *day, int *hour, int *minute, int second)
{
 static const char cmd[1] = { 0x1C };

 ikbd_write(cmd, 1);
}
