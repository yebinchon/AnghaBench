
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_fsf_req {int list; } ;
struct zfcp_adapter {int dummy; } ;


 int list_del (int *) ;

__attribute__((used)) static inline void zfcp_reqlist_remove(struct zfcp_adapter *adapter,
           struct zfcp_fsf_req *fsf_req)
{
 list_del(&fsf_req->list);
}
