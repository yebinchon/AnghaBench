
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int scsi_qla_host_t ;


 int qla82xx_device_state_handler (int *) ;

int
qla82xx_load_risc(scsi_qla_host_t *vha, uint32_t *srisc_addr)
{
 int rval;
 rval = qla82xx_device_state_handler(vha);
 return rval;
}
