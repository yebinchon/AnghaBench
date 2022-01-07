
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cfe_writeblk (int,int ,unsigned char*,int) ;

int cfe_write(int handle, unsigned char *buffer, int length)
{
 return cfe_writeblk(handle, 0, buffer, length);
}
