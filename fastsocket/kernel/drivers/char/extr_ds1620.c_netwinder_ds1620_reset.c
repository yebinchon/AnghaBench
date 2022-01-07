
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPLD_DS_ENABLE ;
 int nw_cpld_modify (int ,int ) ;

__attribute__((used)) static inline void netwinder_ds1620_reset(void)
{
 nw_cpld_modify(CPLD_DS_ENABLE, 0);
 nw_cpld_modify(CPLD_DS_ENABLE, CPLD_DS_ENABLE);
}
