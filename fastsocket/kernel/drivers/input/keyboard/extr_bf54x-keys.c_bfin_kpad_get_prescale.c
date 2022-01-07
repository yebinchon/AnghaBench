
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int get_sclk () ;

__attribute__((used)) static inline u16 bfin_kpad_get_prescale(u32 timescale)
{
 u32 sclk = get_sclk();

 return ((((sclk / 1000) * timescale) / 1024) - 1);
}
