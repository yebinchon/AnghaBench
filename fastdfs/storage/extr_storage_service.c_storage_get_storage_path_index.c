
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int count; } ;
struct TYPE_3__ {int free_mb; int total_mb; } ;


 int ENOSPC ;
 scalar_t__ FDFS_STORE_PATH_LOAD_BALANCE ;
 int g_avg_storage_reserved_mb ;
 TYPE_2__ g_fdfs_store_paths ;
 TYPE_1__* g_path_space_list ;
 int g_store_path_index ;
 scalar_t__ g_store_path_mode ;
 scalar_t__ storage_check_reserved_space_path (int ,int ,int ) ;

int storage_get_storage_path_index(int *store_path_index)
{
 int i;

 *store_path_index = g_store_path_index;
 if (g_store_path_mode == FDFS_STORE_PATH_LOAD_BALANCE)
 {
  if (*store_path_index < 0 || *store_path_index >= g_fdfs_store_paths.count)

  {
   return ENOSPC;
  }
 }
 else
 {
  if (*store_path_index >= g_fdfs_store_paths.count)
  {
   *store_path_index = 0;
  }

  if (!storage_check_reserved_space_path(g_path_space_list [*store_path_index].total_mb, g_path_space_list [*store_path_index].free_mb, g_avg_storage_reserved_mb))


  {
   for (i=0; i<g_fdfs_store_paths.count; i++)
   {
    if (storage_check_reserved_space_path( g_path_space_list[i].total_mb, g_path_space_list[i].free_mb, g_avg_storage_reserved_mb))



    {
     *store_path_index = i;
     g_store_path_index = i;
     break;
    }
   }

   if (i == g_fdfs_store_paths.count)
   {
    return ENOSPC;
   }
  }

  g_store_path_index++;
  if (g_store_path_index >= g_fdfs_store_paths.count)
  {
   g_store_path_index = 0;
  }
 }

 return 0;
}
