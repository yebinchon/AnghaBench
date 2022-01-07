
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_qla_host {TYPE_1__* iobase; } ;
struct TYPE_2__ {int ictrl; } ;


 int ISP_EN_INT ;
 int ISP_EN_RISC ;
 int RD_REG_WORD (int *) ;
 int WRT_REG_WORD (int *,int) ;

__attribute__((used)) static inline void
qla1280_enable_intrs(struct scsi_qla_host *ha)
{
 WRT_REG_WORD(&ha->iobase->ictrl, (ISP_EN_INT | ISP_EN_RISC));
 RD_REG_WORD(&ha->iobase->ictrl);
}
