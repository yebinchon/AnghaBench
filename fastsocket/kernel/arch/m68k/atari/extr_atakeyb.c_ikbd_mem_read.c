
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ikbd_write (char*,int) ;

void ikbd_mem_read(int address, char data[6])
{
 char cmd[3] = { 0x21, address>>8, address&0xFF };

 ikbd_write(cmd, 3);


}
