
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fdht_free_group_array (int *) ;
 int g_group_array ;

void fdht_client_destroy()
{
 fdht_free_group_array(&g_group_array);
}
