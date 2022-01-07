
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char EXTENDED_MESSAGE ;
 unsigned char EXTENDED_WDTR ;

int spi_populate_width_msg(unsigned char *msg, int width)
{
 msg[0] = EXTENDED_MESSAGE;
 msg[1] = 2;
 msg[2] = EXTENDED_WDTR;
 msg[3] = width;
 return 4;
}
