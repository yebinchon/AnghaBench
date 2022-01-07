
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int unload_heads_path ;
 int write_int (int ,int) ;

void protect(int seconds)
{
 write_int(unload_heads_path, seconds*1000);
}
