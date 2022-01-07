
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {int vport_flag; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int ssize_t ;


 int STATIC_VPORT ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int sprintf (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static ssize_t
lpfc_static_vport_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct lpfc_vport *vport = (struct lpfc_vport *) shost->hostdata;
 if (vport->vport_flag & STATIC_VPORT)
  sprintf(buf, "1\n");
 else
  sprintf(buf, "0\n");

 return strlen(buf);
}
