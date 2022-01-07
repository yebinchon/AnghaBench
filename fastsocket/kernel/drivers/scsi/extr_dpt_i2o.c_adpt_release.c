
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {scalar_t__* hostdata; } ;
typedef int adpt_hba ;


 int adpt_i2o_delete_hba (int *) ;
 int scsi_unregister (struct Scsi_Host*) ;

__attribute__((used)) static int adpt_release(struct Scsi_Host *host)
{
 adpt_hba* pHba = (adpt_hba*) host->hostdata[0];

 adpt_i2o_delete_hba(pHba);
 scsi_unregister(host);
 return 0;
}
