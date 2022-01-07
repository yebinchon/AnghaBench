
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int hardware_lock; } ;


 int __qla4xxx_disable_intrs (struct scsi_qla_host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void
qla4xxx_disable_intrs(struct scsi_qla_host *ha)
{
 unsigned long flags;

 spin_lock_irqsave(&ha->hardware_lock, flags);
 __qla4xxx_disable_intrs(ha);
 spin_unlock_irqrestore(&ha->hardware_lock, flags);
}
