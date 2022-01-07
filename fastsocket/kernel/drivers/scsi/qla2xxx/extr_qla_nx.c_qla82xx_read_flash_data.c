
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct qla_hw_data {int dummy; } ;
struct TYPE_4__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int __constant_cpu_to_le32 (int) ;
 int ql_log (int ,TYPE_1__*,int,char*) ;
 int ql_log_warn ;
 scalar_t__ qla82xx_rom_fast_read (struct qla_hw_data*,int,int*) ;

__attribute__((used)) static uint32_t *
qla82xx_read_flash_data(scsi_qla_host_t *vha, uint32_t *dwptr, uint32_t faddr,
 uint32_t length)
{
 uint32_t i;
 uint32_t val;
 struct qla_hw_data *ha = vha->hw;


 for (i = 0; i < length/4; i++, faddr += 4) {
  if (qla82xx_rom_fast_read(ha, faddr, &val)) {
   ql_log(ql_log_warn, vha, 0x0106,
       "Do ROM fast read failed.\n");
   goto done_read;
  }
  dwptr[i] = __constant_cpu_to_le32(val);
 }
done_read:
 return dwptr;
}
