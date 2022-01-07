
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int IS_QLA81XX (int ) ;
 int QLA_SUCCESS ;
 int qla81xx_write_mpi_register (TYPE_1__*,int*) ;

__attribute__((used)) static int
qla81xx_reset_mpi(scsi_qla_host_t *vha)
{
 uint16_t mb[4] = {0x1010, 0, 1, 0};

 if (!IS_QLA81XX(vha->hw))
     return QLA_SUCCESS;

 return qla81xx_write_mpi_register(vha, mb);
}
