
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int AMB_CONFIG_SIZE ;
 unsigned long AMB_FUNC_3_OFFSET ;
 unsigned long AMB_REG_TEMP_MIN_ADDR ;

__attribute__((used)) static unsigned long amb_reg_temp_min(unsigned int amb)
{
 return AMB_FUNC_3_OFFSET + AMB_REG_TEMP_MIN_ADDR +
        AMB_CONFIG_SIZE * amb;
}
