
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int group_count; int server_count; TYPE_1__* groups; TYPE_1__* servers; } ;
struct TYPE_6__ {int sock; struct TYPE_6__* servers; } ;
typedef TYPE_1__ ServerArray ;
typedef TYPE_2__ GroupArray ;
typedef TYPE_1__ FDHTServerInfo ;


 int close (int) ;
 int free (TYPE_1__*) ;

void fdht_free_group_array(GroupArray *pGroupArray)
{
 ServerArray *pServerArray;
 ServerArray *pArrayEnd;
 FDHTServerInfo *pServerInfo;
 FDHTServerInfo *pServerEnd;

 if (pGroupArray->servers != ((void*)0))
 {
  pArrayEnd = pGroupArray->groups + pGroupArray->group_count;
  for (pServerArray=pGroupArray->groups; pServerArray<pArrayEnd;
    pServerArray++)
  {
   if (pServerArray->servers == ((void*)0))
   {
    continue;
   }

   free(pServerArray->servers);
   pServerArray->servers = ((void*)0);
  }

  pServerEnd = pGroupArray->servers + pGroupArray->server_count;
  for (pServerInfo=pGroupArray->servers; pServerInfo<pServerEnd; pServerInfo++)

  {
   if (pServerInfo->sock >= 0)
   {
    close(pServerInfo->sock);
    pServerInfo->sock = -1;
   }
  }

  free(pGroupArray->servers);
  pGroupArray->servers = ((void*)0);
 }

 if (pGroupArray->groups != ((void*)0))
 {
  free(pGroupArray->groups);
  pGroupArray->groups = ((void*)0);
 }
}
