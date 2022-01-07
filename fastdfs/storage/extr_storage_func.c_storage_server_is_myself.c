
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ip_addr; int id; } ;
typedef TYPE_1__ FDFSStorageBrief ;


 int g_my_server_id_str ;
 scalar_t__ g_use_storage_id ;
 int is_local_host_ip (int ) ;
 scalar_t__ strcmp (int ,int ) ;

bool storage_server_is_myself(const FDFSStorageBrief *pStorageBrief)
{
 if (g_use_storage_id)
 {
  return strcmp(pStorageBrief->id, g_my_server_id_str) == 0;
 }
 else
 {
  return is_local_host_ip(pStorageBrief->ip_addr);
 }
}
