
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_sdbp_header {int dummy; } ;


 struct smu_sdbp_header const* __smu_get_sdb_partition (int,unsigned int*,int ) ;

const struct smu_sdbp_header *smu_get_sdb_partition(int id, unsigned int *size)
{
 return __smu_get_sdb_partition(id, size, 0);
}
