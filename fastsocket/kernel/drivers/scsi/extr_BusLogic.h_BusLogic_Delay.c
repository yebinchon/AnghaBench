
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mdelay (int) ;

__attribute__((used)) static inline void BusLogic_Delay(int Seconds)
{
 mdelay(1000 * Seconds);
}
