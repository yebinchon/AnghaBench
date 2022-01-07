
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware_priv {int status; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int FW_STATUS_LOADING ;
 struct firmware_priv* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static ssize_t firmware_loading_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct firmware_priv *fw_priv = dev_get_drvdata(dev);
 int loading = test_bit(FW_STATUS_LOADING, &fw_priv->status);
 return sprintf(buf, "%d\n", loading);
}
