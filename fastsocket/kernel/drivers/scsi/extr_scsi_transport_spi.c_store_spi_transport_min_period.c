
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transport_attrs {int min_period; } ;
struct scsi_target {int starget_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int store_spi_transport_period_helper (struct device*,char const*,size_t,int *) ;
 struct scsi_target* transport_class_to_starget (struct device*) ;

__attribute__((used)) static ssize_t
store_spi_transport_min_period(struct device *cdev,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 struct scsi_target *starget = transport_class_to_starget(cdev);
 struct spi_transport_attrs *tp =
  (struct spi_transport_attrs *)&starget->starget_data;

 return store_spi_transport_period_helper(cdev, buf, count,
       &tp->min_period);
}
