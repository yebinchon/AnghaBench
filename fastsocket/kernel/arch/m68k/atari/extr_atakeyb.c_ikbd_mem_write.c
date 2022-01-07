
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int panic (char*) ;

void ikbd_mem_write(int address, int size, char *data)
{
 panic("Attempt to write data into keyboard memory");
}
