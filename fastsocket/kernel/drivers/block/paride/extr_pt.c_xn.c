
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int xn(char *buf, int offs, int size)
{
 int v, k;

 v = 0;
 for (k = 0; k < size; k++)
  v = v * 256 + (buf[k + offs] & 0xff);
 return v;
}
