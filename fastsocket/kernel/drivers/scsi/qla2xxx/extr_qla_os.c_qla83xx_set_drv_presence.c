
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int scsi_qla_host_t ;


 int QLA_SUCCESS ;
 int __qla83xx_set_drv_presence (int *) ;
 int qla83xx_idc_lock (int *,int ) ;
 int qla83xx_idc_unlock (int *,int ) ;

int
qla83xx_set_drv_presence(scsi_qla_host_t *vha)
{
 int rval = QLA_SUCCESS;

 qla83xx_idc_lock(vha, 0);
 rval = __qla83xx_set_drv_presence(vha);
 qla83xx_idc_unlock(vha, 0);

 return rval;
}
