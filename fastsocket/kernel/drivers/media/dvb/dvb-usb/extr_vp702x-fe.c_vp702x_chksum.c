
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 vp702x_chksum(u8 *buf,int f, int count)
{
 u8 s = 0;
 int i;
 for (i = f; i < f+count; i++)
  s += buf[i];
 return ~s+1;
}
