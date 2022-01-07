
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long LASATINT_MASK_SHIFT_200 ;
 unsigned long* lasat_int_status ;

__attribute__((used)) static unsigned long get_int_status_200(void)
{
 unsigned long int_status;

 int_status = *lasat_int_status;
 int_status &= (int_status >> LASATINT_MASK_SHIFT_200) & 0xffff;
 return int_status;
}
