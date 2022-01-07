
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_dbf_scsi_record {int dummy; } ;
struct zfcp_dbf_san_record {int dummy; } ;
struct zfcp_dbf_rec_record {int dummy; } ;
struct zfcp_dbf_hba_record {int dummy; } ;
struct zfcp_dbf {void* scsi; void* san; void* hba; void* rec; int rec_lock; int scsi_lock; int san_lock; int hba_lock; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {struct zfcp_dbf* dbf; TYPE_1__* ccw_device; } ;
struct TYPE_2__ {int dev; } ;


 int DEBUG_MAX_NAME_LEN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 char* dev_name (int *) ;
 struct zfcp_dbf* kmalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int sprintf (char*,char*,char*) ;
 int zfcp_dbf_adapter_unregister (struct zfcp_dbf*) ;
 int zfcp_dbf_hba_view ;
 int zfcp_dbf_rec_view ;
 void* zfcp_dbf_reg (char*,int,int *,int) ;
 int zfcp_dbf_san_view ;
 int zfcp_dbf_scsi_view ;

int zfcp_dbf_adapter_register(struct zfcp_adapter *adapter)
{
 char dbf_name[DEBUG_MAX_NAME_LEN];
 struct zfcp_dbf *dbf;

 dbf = kmalloc(sizeof(struct zfcp_dbf), GFP_KERNEL);
 if (!dbf)
  return -ENOMEM;

 dbf->adapter = adapter;

 spin_lock_init(&dbf->hba_lock);
 spin_lock_init(&dbf->san_lock);
 spin_lock_init(&dbf->scsi_lock);
 spin_lock_init(&dbf->rec_lock);


 sprintf(dbf_name, "zfcp_%s_rec", dev_name(&adapter->ccw_device->dev));
 dbf->rec = zfcp_dbf_reg(dbf_name, 3, &zfcp_dbf_rec_view,
    sizeof(struct zfcp_dbf_rec_record));
 if (!dbf->rec)
  goto err_out;


 sprintf(dbf_name, "zfcp_%s_hba", dev_name(&adapter->ccw_device->dev));
 dbf->hba = zfcp_dbf_reg(dbf_name, 3, &zfcp_dbf_hba_view,
    sizeof(struct zfcp_dbf_hba_record));
 if (!dbf->hba)
  goto err_out;


 sprintf(dbf_name, "zfcp_%s_san", dev_name(&adapter->ccw_device->dev));
 dbf->san = zfcp_dbf_reg(dbf_name, 6, &zfcp_dbf_san_view,
    sizeof(struct zfcp_dbf_san_record));
 if (!dbf->san)
  goto err_out;


 sprintf(dbf_name, "zfcp_%s_scsi", dev_name(&adapter->ccw_device->dev));
 dbf->scsi = zfcp_dbf_reg(dbf_name, 3, &zfcp_dbf_scsi_view,
     sizeof(struct zfcp_dbf_scsi_record));
 if (!dbf->scsi)
  goto err_out;

 adapter->dbf = dbf;
 return 0;

err_out:
 zfcp_dbf_adapter_unregister(dbf);
 return -ENOMEM;
}
