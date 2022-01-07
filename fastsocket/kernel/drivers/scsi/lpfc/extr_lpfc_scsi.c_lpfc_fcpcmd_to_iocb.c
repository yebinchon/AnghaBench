
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct fcp_cmnd {int dummy; } ;


 int cpu_to_be32 (int ) ;

__attribute__((used)) static void
lpfc_fcpcmd_to_iocb(uint8_t *data, struct fcp_cmnd *fcp_cmnd)
{
 int i, j;
 for (i = 0, j = 0; i < sizeof(struct fcp_cmnd);
      i += sizeof(uint32_t), j++) {
  ((uint32_t *)data)[j] = cpu_to_be32(((uint32_t *)fcp_cmnd)[j]);
 }
}
