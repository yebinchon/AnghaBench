
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;


 unsigned char parkbd_buffer ;
 scalar_t__ parkbd_counter ;
 int parkbd_mode ;
 int parkbd_writelines (int) ;
 int parkbd_writing ;

__attribute__((used)) static int parkbd_write(struct serio *port, unsigned char c)
{
 unsigned char p;

 if (!parkbd_mode) return -1;

        p = c ^ (c >> 4);
 p = p ^ (p >> 2);
 p = p ^ (p >> 1);

 parkbd_counter = 0;
 parkbd_writing = 1;
 parkbd_buffer = c | (((int) (~p & 1)) << 8) | 0x600;

 parkbd_writelines(2);

 return 0;
}
