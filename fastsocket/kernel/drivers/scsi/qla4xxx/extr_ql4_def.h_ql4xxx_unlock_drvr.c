
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int dummy; } ;


 int QL4010_DRVR_SEM_MASK ;
 int QL4022_DRVR_SEM_MASK ;
 scalar_t__ is_qla4010 (struct scsi_qla_host*) ;
 int ql4xxx_sem_unlock (struct scsi_qla_host*,int ) ;

__attribute__((used)) static inline void ql4xxx_unlock_drvr(struct scsi_qla_host *a)
{
 if (is_qla4010(a))
  ql4xxx_sem_unlock(a, QL4010_DRVR_SEM_MASK);
 else
  ql4xxx_sem_unlock(a, QL4022_DRVR_SEM_MASK);
}
