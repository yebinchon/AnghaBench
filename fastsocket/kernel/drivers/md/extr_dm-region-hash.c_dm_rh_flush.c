
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dm_region_hash {TYPE_2__* log; } ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {int (* flush ) (TYPE_2__*) ;} ;


 int stub1 (TYPE_2__*) ;

int dm_rh_flush(struct dm_region_hash *rh)
{
 return rh->log->type->flush(rh->log);
}
