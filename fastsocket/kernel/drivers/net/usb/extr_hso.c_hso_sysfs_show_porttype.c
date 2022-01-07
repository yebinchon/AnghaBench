
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hso_device {int port_spec; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
 int HSO_PORT_MASK ;



 struct hso_device* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t hso_sysfs_show_porttype(struct device *dev,
           struct device_attribute *attr,
           char *buf)
{
 struct hso_device *hso_dev = dev_get_drvdata(dev);
 char *port_name;

 if (!hso_dev)
  return 0;

 switch (hso_dev->port_spec & HSO_PORT_MASK) {
 case 135:
  port_name = "Control";
  break;
 case 137:
  port_name = "Application";
  break;
 case 136:
  port_name = "Application2";
  break;
 case 132:
  port_name = "GPS";
  break;
 case 131:
  port_name = "GPS Control";
  break;
 case 128:
  port_name = "PCSC";
  break;
 case 134:
  port_name = "Diagnostic";
  break;
 case 133:
  port_name = "Diagnostic2";
  break;
 case 130:
  port_name = "Modem";
  break;
 case 129:
  port_name = "Network";
  break;
 default:
  port_name = "Unknown";
  break;
 }

 return sprintf(buf, "%s\n", port_name);
}
