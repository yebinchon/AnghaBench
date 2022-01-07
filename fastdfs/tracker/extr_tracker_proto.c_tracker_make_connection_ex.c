
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ConnectionInfo ;


 int conn_pool_connect_server (int *,int const) ;
 int * conn_pool_get_connection (int *,int *,int*) ;
 int g_connection_pool ;
 scalar_t__ g_use_connection_pool ;

ConnectionInfo *tracker_make_connection_ex(ConnectionInfo *conn,
  const int connect_timeout, int *err_no)
{
 if (g_use_connection_pool)
 {
  return conn_pool_get_connection(&g_connection_pool,
   conn, err_no);
 }
 else
 {
  *err_no = conn_pool_connect_server(conn, connect_timeout);
  if (*err_no != 0)
  {
   return ((void*)0);
  }
  else
  {
   return conn;
  }
 }
}
