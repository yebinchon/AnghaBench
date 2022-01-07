
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym53c500_data {int fast_pio; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int simple_strtoul (char const*,int *,int ) ;

__attribute__((used)) static ssize_t
SYM53C500_store_pio(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t count)
{
 int pio;
 struct Scsi_Host *SHp = class_to_shost(dev);
 struct sym53c500_data *data =
     (struct sym53c500_data *)SHp->hostdata;

 pio = simple_strtoul(buf, ((void*)0), 0);
 if (pio == 0 || pio == 1) {
  data->fast_pio = pio;
  return count;
 }
 else
  return -EINVAL;
}
