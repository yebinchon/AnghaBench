
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int scsi_qla_host_t ;



__attribute__((used)) static inline uint16_t
qla24xx_calc_iocbs(scsi_qla_host_t *vha, uint16_t dsds)
{
 uint16_t iocbs;

 iocbs = 1;
 if (dsds > 1) {
  iocbs += (dsds - 1) / 5;
  if ((dsds - 1) % 5)
   iocbs++;
 }
 return iocbs;
}
