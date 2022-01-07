
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int conn_pool_destroy (int *) ;
 int g_connection_pool ;

void fdfs_connection_pool_destroy()
{
 conn_pool_destroy(&g_connection_pool);
}
