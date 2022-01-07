
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_rport {scalar_t__ supported_classes; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ FC_COS_UNSPECIFIED ;
 int get_fc_cos_names (scalar_t__,char*) ;
 int snprintf (char*,int,char*) ;
 struct fc_rport* transport_class_to_rport (struct device*) ;

__attribute__((used)) static ssize_t
show_fc_rport_supported_classes (struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct fc_rport *rport = transport_class_to_rport(dev);
 if (rport->supported_classes == FC_COS_UNSPECIFIED)
  return snprintf(buf, 20, "unspecified\n");
 return get_fc_cos_names(rport->supported_classes, buf);
}
