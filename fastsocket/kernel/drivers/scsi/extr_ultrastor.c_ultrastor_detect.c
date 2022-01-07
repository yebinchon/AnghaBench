
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_host_template {char* proc_name; } ;


 scalar_t__ ultrastor_14f_detect (struct scsi_host_template*) ;
 scalar_t__ ultrastor_24f_detect (struct scsi_host_template*) ;

__attribute__((used)) static int ultrastor_detect(struct scsi_host_template * tpnt)
{
 tpnt->proc_name = "ultrastor";
 return ultrastor_14f_detect(tpnt) || ultrastor_24f_detect(tpnt);
}
