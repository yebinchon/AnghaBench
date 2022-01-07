
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,void*,int) ;
 int memmove (void*,void*,int) ;

__attribute__((used)) static inline void DAC960_P_To_PD_TranslateDeviceState(void *DeviceState)
{
  memcpy(DeviceState + 2, DeviceState + 3, 1);
  memmove(DeviceState + 4, DeviceState + 5, 2);
  memmove(DeviceState + 6, DeviceState + 8, 4);
}
