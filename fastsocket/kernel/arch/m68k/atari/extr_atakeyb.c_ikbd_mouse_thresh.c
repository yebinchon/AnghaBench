
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ikbd_write (char*,int) ;

void ikbd_mouse_thresh(int x, int y)
{
 char cmd[3] = { 0x0B, x, y };

 ikbd_write(cmd, 3);
}
