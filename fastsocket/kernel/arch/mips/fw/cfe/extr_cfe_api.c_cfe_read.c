
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cfe_readblk (int,int ,unsigned char*,int) ;

int cfe_read(int handle, unsigned char *buffer, int length)
{
 return cfe_readblk(handle, 0, buffer, length);
}
