
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {int stat_data_enabled; int stat_data_blocked; struct lpfc_hba* phba; } ;
struct lpfc_hba {int bucket_type; int bucket_base; int bucket_step; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int ssize_t ;



 int LPFC_MAX_BUCKET_COUNT ;
 int LPFC_NO_BUCKET ;

 int PAGE_SIZE ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int sprintf (char*,char*,...) ;
 int strlen (char*) ;

__attribute__((used)) static ssize_t
lpfc_stat_data_ctrl_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct lpfc_vport *vport = (struct lpfc_vport *) shost->hostdata;
 struct lpfc_hba *phba = vport->phba;
 int index = 0;
 int i;
 char *bucket_type;
 unsigned long bucket_value;

 switch (phba->bucket_type) {
 case 129:
  bucket_type = "linear";
  break;
 case 128:
  bucket_type = "power2";
  break;
 default:
  bucket_type = "No Bucket";
  break;
 }

 sprintf(&buf[index], "Statistical Data enabled :%d, "
  "blocked :%d, Bucket type :%s, Bucket base :%d,"
  " Bucket step :%d\nLatency Ranges :",
  vport->stat_data_enabled, vport->stat_data_blocked,
  bucket_type, phba->bucket_base, phba->bucket_step);
 index = strlen(buf);
 if (phba->bucket_type != LPFC_NO_BUCKET) {
  for (i = 0; i < LPFC_MAX_BUCKET_COUNT; i++) {
   if (phba->bucket_type == 129)
    bucket_value = phba->bucket_base +
     phba->bucket_step * i;
   else
    bucket_value = phba->bucket_base +
    (1 << i) * phba->bucket_step;

   if (index + 10 > PAGE_SIZE)
    break;
   sprintf(&buf[index], "%08ld ", bucket_value);
   index = strlen(buf);
  }
 }
 sprintf(&buf[index], "\n");
 return strlen(buf);
}
