
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct qla_hw_data {int dummy; } ;
struct TYPE_3__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 size_t cpu_to_le32 (int ) ;
 int flash_data_addr (struct qla_hw_data*,size_t) ;
 int qla24xx_read_flash_dword (struct qla_hw_data*,int ) ;

uint32_t *
qla24xx_read_flash_data(scsi_qla_host_t *vha, uint32_t *dwptr, uint32_t faddr,
    uint32_t dwords)
{
 uint32_t i;
 struct qla_hw_data *ha = vha->hw;


 for (i = 0; i < dwords; i++, faddr++)
  dwptr[i] = cpu_to_le32(qla24xx_read_flash_dword(ha,
      flash_data_addr(ha, faddr)));

 return dwptr;
}
