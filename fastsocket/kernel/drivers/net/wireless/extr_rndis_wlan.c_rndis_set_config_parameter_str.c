
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;


 int rndis_set_config_parameter (struct usbnet*,char*,int,char*) ;

__attribute__((used)) static int rndis_set_config_parameter_str(struct usbnet *dev,
      char *param, char *value)
{
 return rndis_set_config_parameter(dev, param, 2, value);
}
