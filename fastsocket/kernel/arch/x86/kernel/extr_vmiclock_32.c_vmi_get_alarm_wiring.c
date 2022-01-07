
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vmi_wiring ;

__attribute__((used)) static inline int vmi_get_alarm_wiring(void)
{
 return vmi_wiring;
}
