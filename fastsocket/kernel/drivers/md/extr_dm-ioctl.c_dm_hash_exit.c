
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dm_hash_remove_all (int ) ;

__attribute__((used)) static void dm_hash_exit(void)
{
 dm_hash_remove_all(0);
}
