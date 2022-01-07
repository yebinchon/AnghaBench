
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym53c500_data {int fast_pio; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int ssize_t ;


 struct Scsi_Host* class_to_shost (struct device*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static ssize_t
SYM53C500_show_pio(struct device *dev, struct device_attribute *attr,
     char *buf)
{
 struct Scsi_Host *SHp = class_to_shost(dev);
 struct sym53c500_data *data =
     (struct sym53c500_data *)SHp->hostdata;

 return snprintf(buf, 4, "%d\n", data->fast_pio);
}
