
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool {struct dm_target* ti; } ;
struct dm_target {int dummy; } ;



__attribute__((used)) static void unbind_control_target(struct pool *pool, struct dm_target *ti)
{
 if (pool->ti == ti)
  pool->ti = ((void*)0);
}
