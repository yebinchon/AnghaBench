
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v ;
typedef int u8 ;
typedef int u32 ;


 void* finddevice (char*) ;
 scalar_t__ getprop (void*,char*,int *,int) ;

u8 mv64x60_is_coherent(void)
{
 u32 v;
 void *devp;

 devp = finddevice("/");
 if (devp == ((void*)0))
  return 1;

 if (getprop(devp, "coherency-off", &v, sizeof(v)) < 0)
  return 1;
 else
  return 0;
}
