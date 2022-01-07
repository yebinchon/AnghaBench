
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_dirty_log {TYPE_1__* type; } ;
struct TYPE_2__ {int (* dtr ) (struct dm_dirty_log*) ;} ;


 int kfree (struct dm_dirty_log*) ;
 int put_type (TYPE_1__*) ;
 int stub1 (struct dm_dirty_log*) ;

void dm_dirty_log_destroy(struct dm_dirty_log *log)
{
 log->type->dtr(log);
 put_type(log->type);
 kfree(log);
}
