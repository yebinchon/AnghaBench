
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_space_map {int (* destroy ) (struct dm_space_map*) ;} ;


 int stub1 (struct dm_space_map*) ;

__attribute__((used)) static inline void dm_sm_destroy(struct dm_space_map *sm)
{
 sm->destroy(sm);
}
