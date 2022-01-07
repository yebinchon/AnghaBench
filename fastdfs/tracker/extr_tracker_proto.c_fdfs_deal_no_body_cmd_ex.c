
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int port; int sock; int ip_addr; } ;
typedef TYPE_1__ ConnectionInfo ;


 int fdfs_deal_no_body_cmd (TYPE_1__*,int const) ;
 int strcpy (int ,char const*) ;
 int tracker_close_connection_ex (TYPE_1__*,int) ;
 TYPE_1__* tracker_make_connection (TYPE_1__*,int*) ;

int fdfs_deal_no_body_cmd_ex(const char *ip_addr, const int port, const int cmd)
{
 ConnectionInfo *conn;
 ConnectionInfo server_info;
 int result;

 strcpy(server_info.ip_addr, ip_addr);
 server_info.port = port;
 server_info.sock = -1;
 if ((conn=tracker_make_connection(&server_info, &result)) == ((void*)0))
 {
  return result;
 }

 result = fdfs_deal_no_body_cmd(conn, cmd);
 tracker_close_connection_ex(conn, result != 0);
 return result;
}
