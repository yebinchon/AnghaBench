
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int flags; } ;


 int AF_83XX_IOCB_INTR_ON ;
 int qla4_8xxx_intr_disable (struct scsi_qla_host*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void qla4_83xx_disable_iocb_intrs(struct scsi_qla_host *ha)
{
 if (test_and_clear_bit(AF_83XX_IOCB_INTR_ON, &ha->flags))
  qla4_8xxx_intr_disable(ha);
}
