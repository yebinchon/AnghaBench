
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ConnectionInfo ;


 int conn_pool_close_connection_ex (int *,int *,int const) ;
 int conn_pool_disconnect_server (int *) ;
 int g_connection_pool ;
 scalar_t__ g_use_connection_pool ;

void tracker_close_connection_ex(ConnectionInfo *conn, const bool bForceClose)

{
 if (g_use_connection_pool)
 {
  conn_pool_close_connection_ex(&g_connection_pool, conn, bForceClose);

 }
 else
 {
  conn_pool_disconnect_server(conn);
 }
}
