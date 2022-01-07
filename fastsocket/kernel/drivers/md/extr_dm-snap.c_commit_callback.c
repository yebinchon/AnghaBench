
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_snap_pending_exception {int dummy; } ;


 int pending_complete (struct dm_snap_pending_exception*,int) ;

__attribute__((used)) static void commit_callback(void *context, int success)
{
 struct dm_snap_pending_exception *pe = context;

 pending_complete(pe, success);
}
