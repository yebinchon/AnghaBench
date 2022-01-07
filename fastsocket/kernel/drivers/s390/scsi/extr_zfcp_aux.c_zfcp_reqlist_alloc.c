
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {int * req_list; } ;
struct list_head {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int REQUEST_LIST_SIZE ;
 int * kcalloc (int,int,int ) ;

__attribute__((used)) static int zfcp_reqlist_alloc(struct zfcp_adapter *adapter)
{
 int idx;

 adapter->req_list = kcalloc(REQUEST_LIST_SIZE, sizeof(struct list_head),
        GFP_KERNEL);
 if (!adapter->req_list)
  return -ENOMEM;

 for (idx = 0; idx < REQUEST_LIST_SIZE; idx++)
  INIT_LIST_HEAD(&adapter->req_list[idx]);
 return 0;
}
