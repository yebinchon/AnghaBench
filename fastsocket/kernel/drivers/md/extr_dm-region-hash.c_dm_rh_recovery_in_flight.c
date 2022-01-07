
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_region_hash {int recovery_in_flight; } ;


 int atomic_read (int *) ;

int dm_rh_recovery_in_flight(struct dm_region_hash *rh)
{
 return atomic_read(&rh->recovery_in_flight);
}
