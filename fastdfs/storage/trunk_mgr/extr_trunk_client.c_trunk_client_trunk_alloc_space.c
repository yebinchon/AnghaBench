
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TrackerServerInfo ;
typedef int FDFSTrunkFullInfo ;
typedef int ConnectionInfo ;


 scalar_t__ g_if_trunker_self ;
 int tracker_close_connection_ex (int *,int) ;
 int trunk_alloc_space (int const,int *) ;
 int trunk_client_connect_trunk_server (int *,int **,char*) ;
 int trunk_client_trunk_do_alloc_space (int *,int const,int *) ;

int trunk_client_trunk_alloc_space(const int file_size, FDFSTrunkFullInfo *pTrunkInfo)

{
 int result;
 TrackerServerInfo trunk_server;
 ConnectionInfo *pTrunkServer;

 if (g_if_trunker_self)
 {
  return trunk_alloc_space(file_size, pTrunkInfo);
 }

    if ((result=trunk_client_connect_trunk_server(&trunk_server,
                    &pTrunkServer, "can't alloc trunk space")) != 0)
    {
        return result;
    }

 result = trunk_client_trunk_do_alloc_space(pTrunkServer, file_size, pTrunkInfo);


 tracker_close_connection_ex(pTrunkServer, result != 0);
 return result;
}
