
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MHZ (int) ;
 void* finddevice (char const*) ;
 int printf (char*,char const*,int,int) ;
 int setprop_val (void*,char*,int) ;

void dt_fixup_clock(const char *path, u32 freq)
{
 void *devp = finddevice(path);

 if (devp) {
  printf("%s: clock-frequency <- %x (%dMHz)\n\r", path, freq, MHZ(freq));
  setprop_val(devp, "clock-frequency", freq);
 }
}
