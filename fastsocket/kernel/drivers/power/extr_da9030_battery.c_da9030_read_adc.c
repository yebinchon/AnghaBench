
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct da9030_charger {int master; } ;
struct da9030_adc_res {int dummy; } ;


 int DA9030_VBAT_RES ;
 int da903x_reads (int ,int ,int,int *) ;

__attribute__((used)) static inline void da9030_read_adc(struct da9030_charger *charger,
       struct da9030_adc_res *adc)
{
 da903x_reads(charger->master, DA9030_VBAT_RES,
       sizeof(*adc), (uint8_t *)adc);
}
