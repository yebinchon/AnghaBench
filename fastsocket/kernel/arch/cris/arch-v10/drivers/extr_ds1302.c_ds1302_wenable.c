
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int out_byte (int) ;
 int start () ;
 int stop () ;

__attribute__((used)) static void
ds1302_wenable(void)
{
 start();
 out_byte(0x8e);
 out_byte(0x00);
 stop();
}
