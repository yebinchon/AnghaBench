
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int server_count; int * servers; } ;
typedef TYPE_1__ GroupArray ;
typedef int FDHTServerInfo ;


 scalar_t__ fdht_cmp_by_ip_and_port_p (int *,int *) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void fdht_insert_sorted_servers(GroupArray *pGroupArray, FDHTServerInfo *pInsertedServer)

{
 FDHTServerInfo *pCurrent;

 for (pCurrent=pGroupArray->servers + pGroupArray->server_count; pCurrent > pGroupArray->servers; pCurrent--)

 {
  if (fdht_cmp_by_ip_and_port_p(pCurrent-1, pInsertedServer)<0)
  {
   break;
  }

  memcpy(pCurrent, pCurrent - 1, sizeof(FDHTServerInfo));
 }

 memcpy(pCurrent, pInsertedServer, sizeof(FDHTServerInfo));
}
