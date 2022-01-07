
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SONY_PIC_FAN0_STATUS ;
 int ec_write (int ,unsigned long) ;

__attribute__((used)) static int sony_pic_set_fanspeed(unsigned long value)
{
 return ec_write(SONY_PIC_FAN0_STATUS, value);
}
