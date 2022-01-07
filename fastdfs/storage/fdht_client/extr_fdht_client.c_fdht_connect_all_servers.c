
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int sock; } ;
struct TYPE_5__ {int server_count; scalar_t__ use_proxy; TYPE_2__* servers; } ;
typedef TYPE_1__ GroupArray ;
typedef TYPE_2__ FDHTServerInfo ;


 int ENOENT ;
 int fdht_connect_server_nb (TYPE_2__*,int ) ;
 int g_fdht_connect_timeout ;
 int tcpsetnodelay (int ,int) ;

int fdht_connect_all_servers(GroupArray *pGroupArray, const bool bKeepAlive, int *success_count, int *fail_count)

{
 FDHTServerInfo *pServerInfo;
 FDHTServerInfo *pServerEnd;
 int conn_result;
 int result;

 *success_count = 0;
 *fail_count = 0;
 if (pGroupArray->servers == ((void*)0))
 {
  return ENOENT;
 }

 result = 0;

 pServerEnd = pGroupArray->servers + pGroupArray->server_count;
 for (pServerInfo=pGroupArray->servers; pServerInfo<pServerEnd; pServerInfo++)

 {
  if ((conn_result=fdht_connect_server_nb(pServerInfo, g_fdht_connect_timeout)) != 0)

  {
   result = conn_result;
   (*fail_count)++;
  }
  else
  {
   (*success_count)++;
   if (bKeepAlive || pGroupArray->use_proxy)
   {
    tcpsetnodelay(pServerInfo->sock, 3600);
   }
  }
 }

 if (result != 0)
 {
  return result;
 }
 else
 {
  return *success_count > 0 ? 0: ENOENT;
 }
}
