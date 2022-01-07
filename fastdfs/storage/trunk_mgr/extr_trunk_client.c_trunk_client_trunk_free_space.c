
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TrackerServerInfo ;
typedef int FDFSTrunkFullInfo ;
typedef int ConnectionInfo ;


 scalar_t__ g_if_trunker_self ;
 int tracker_close_connection_ex (int *,int) ;
 int trunk_client_connect_trunk_server (int *,int **,char*) ;
 int trunk_client_trunk_do_free_space (int *,int const*) ;
 int trunk_free_space (int const*,int) ;

int trunk_client_trunk_free_space(const FDFSTrunkFullInfo *pTrunkInfo)
{
 int result;
 TrackerServerInfo trunk_server;
 ConnectionInfo *pTrunkServer;

 if (g_if_trunker_self)
 {
  return trunk_free_space(pTrunkInfo, 1);
 }

    if ((result=trunk_client_connect_trunk_server(&trunk_server,
                    &pTrunkServer, "free trunk space fail")) != 0)
    {
        return result;
    }

 result = trunk_client_trunk_do_free_space(pTrunkServer, pTrunkInfo);
 tracker_close_connection_ex(pTrunkServer, result != 0);
 return result;
}
