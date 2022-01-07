
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ref_count; } ;
typedef TYPE_1__ debug_info_t ;


 int atomic_inc (int *) ;

__attribute__((used)) static void
debug_info_get(debug_info_t * db_info)
{
 if (db_info)
  atomic_inc(&db_info->ref_count);
}
