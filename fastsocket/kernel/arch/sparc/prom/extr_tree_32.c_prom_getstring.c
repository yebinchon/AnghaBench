
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int prom_getproperty (int,char*,char*,int) ;

void prom_getstring(int node, char *prop, char *user_buf, int ubuf_size)
{
 int len;

 len = prom_getproperty(node, prop, user_buf, ubuf_size);
 if(len != -1) return;
 user_buf[0] = 0;
 return;
}
