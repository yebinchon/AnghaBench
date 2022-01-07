
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int dummy; } ;


 scalar_t__ is_qla8022 (struct scsi_qla_host*) ;
 scalar_t__ is_qla8032 (struct scsi_qla_host*) ;

__attribute__((used)) static inline int is_qla80XX(struct scsi_qla_host *ha)
{
 return is_qla8022(ha) || is_qla8032(ha);
}
