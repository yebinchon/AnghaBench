
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_dbf {struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int erp_counter; int status; } ;


 int zfcp_dbf_rec_target (char*,void*,struct zfcp_dbf*,int *,int *,int ,int ,int ) ;

void zfcp_dbf_rec_adapter(char *id, void *ref, struct zfcp_dbf *dbf)
{
 struct zfcp_adapter *adapter = dbf->adapter;

 zfcp_dbf_rec_target(id, ref, dbf, &adapter->status,
      &adapter->erp_counter, 0, 0, 0);
}
