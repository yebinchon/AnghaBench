
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DAC960_gam_dev ;
 int misc_deregister (int *) ;

__attribute__((used)) static void DAC960_gam_cleanup(void)
{
 misc_deregister(&DAC960_gam_dev);
}
