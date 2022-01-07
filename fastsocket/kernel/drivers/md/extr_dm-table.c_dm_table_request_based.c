
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_table {int dummy; } ;


 scalar_t__ DM_TYPE_REQUEST_BASED ;
 scalar_t__ dm_table_get_type (struct dm_table*) ;

bool dm_table_request_based(struct dm_table *t)
{
 return dm_table_get_type(t) == DM_TYPE_REQUEST_BASED;
}
