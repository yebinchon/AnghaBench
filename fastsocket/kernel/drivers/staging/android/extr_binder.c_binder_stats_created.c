
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum binder_stat_types { ____Placeholder_binder_stat_types } binder_stat_types ;
struct TYPE_2__ {int * obj_created; } ;


 TYPE_1__ binder_stats ;

__attribute__((used)) static inline void binder_stats_created(enum binder_stat_types type)
{
 binder_stats.obj_created[type]++;
}
