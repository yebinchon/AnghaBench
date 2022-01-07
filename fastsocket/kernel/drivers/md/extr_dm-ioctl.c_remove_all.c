
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_ioctl {scalar_t__ data_size; } ;


 int dm_hash_remove_all (int) ;

__attribute__((used)) static int remove_all(struct dm_ioctl *param, size_t param_size)
{
 dm_hash_remove_all(1);
 param->data_size = 0;
 return 0;
}
