
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MAX_AMBS_PER_CHANNEL ;

__attribute__((used)) static unsigned long amb_num_from_reg(unsigned int byte_num, unsigned int bit)
{
 return byte_num * MAX_AMBS_PER_CHANNEL + bit;
}
