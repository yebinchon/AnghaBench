
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ sock; } ;
struct TYPE_6__ {int count; TYPE_2__** servers; } ;
typedef TYPE_1__ ServerArray ;
typedef TYPE_2__ FDHTServerInfo ;


 int ENOENT ;
 scalar_t__ fdht_connect_server_nb (TYPE_2__*,int ) ;
 int g_fdht_connect_timeout ;
 int tcpsetnodelay (scalar_t__,int) ;

__attribute__((used)) static FDHTServerInfo *get_connection(ServerArray *pServerArray, const bool bKeepAlive, const int hash_code, int *err_no)

{
 FDHTServerInfo **ppServer;
 FDHTServerInfo **ppEnd;
 int server_index;
 int new_hash_code;

 new_hash_code = (hash_code << 16) | (hash_code >> 16);
 if (new_hash_code < 0)
 {
  new_hash_code &= 0x7FFFFFFF;
 }
 server_index = new_hash_code % pServerArray->count;
 ppEnd = pServerArray->servers + pServerArray->count;
 for (ppServer = pServerArray->servers + server_index; ppServer<ppEnd; ppServer++)

 {
  if ((*ppServer)->sock > 0)
  {
   return *ppServer;
  }

  if (fdht_connect_server_nb(*ppServer, g_fdht_connect_timeout) == 0)

  {
   if (bKeepAlive)
   {
    tcpsetnodelay((*ppServer)->sock, 3600);
   }
   return *ppServer;
  }
 }

 ppEnd = pServerArray->servers + server_index;
 for (ppServer = pServerArray->servers; ppServer<ppEnd; ppServer++)
 {
  if ((*ppServer)->sock > 0)
  {
   return *ppServer;
  }

  if (fdht_connect_server_nb(*ppServer, g_fdht_connect_timeout) == 0)

  {
   if (bKeepAlive)
   {
    tcpsetnodelay((*ppServer)->sock, 3600);
   }
   return *ppServer;
  }
 }

 *err_no = ENOENT;
 return ((void*)0);
}
