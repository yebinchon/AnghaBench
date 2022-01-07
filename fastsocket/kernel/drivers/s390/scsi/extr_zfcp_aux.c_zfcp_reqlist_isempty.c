
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {int * req_list; } ;


 unsigned int REQUEST_LIST_SIZE ;
 int list_empty (int *) ;

int zfcp_reqlist_isempty(struct zfcp_adapter *adapter)
{
 unsigned int idx;

 for (idx = 0; idx < REQUEST_LIST_SIZE; idx++)
  if (!list_empty(&adapter->req_list[idx]))
   return 0;
 return 1;
}
