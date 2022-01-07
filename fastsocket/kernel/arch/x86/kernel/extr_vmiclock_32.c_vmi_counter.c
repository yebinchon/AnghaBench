
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int VMI_ALARM_COUNTER_MASK ;

__attribute__((used)) static inline u32 vmi_counter(u32 flags)
{


 return flags & VMI_ALARM_COUNTER_MASK;
}
