
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int spin_unlock (int *) ;
 int ssp_chip_select (int ) ;
 int ssp_lock ;

__attribute__((used)) static void ssp_release (void)
{
 ssp_chip_select (0);
 spin_unlock (&ssp_lock);
}
