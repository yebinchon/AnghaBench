
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device_type; } ;
struct sas_phy {TYPE_1__ identify; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int get_sas_device_type_names (int ,char*) ;
 int snprintf (char*,int,char*) ;
 struct sas_phy* transport_class_to_phy (struct device*) ;

__attribute__((used)) static ssize_t
show_sas_device_type(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct sas_phy *phy = transport_class_to_phy(dev);

 if (!phy->identify.device_type)
  return snprintf(buf, 20, "none\n");
 return get_sas_device_type_names(phy->identify.device_type, buf);
}
