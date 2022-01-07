
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_dbf {TYPE_1__* adapter; int rec; int hba; int san; int scsi; } ;
struct TYPE_2__ {int * dbf; } ;


 int debug_unregister (int ) ;
 int kfree (struct zfcp_dbf*) ;

void zfcp_dbf_adapter_unregister(struct zfcp_dbf *dbf)
{
 debug_unregister(dbf->scsi);
 debug_unregister(dbf->san);
 debug_unregister(dbf->hba);
 debug_unregister(dbf->rec);
 dbf->adapter->dbf = ((void*)0);
 kfree(dbf);
}
