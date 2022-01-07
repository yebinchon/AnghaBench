
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmlogrdr_priv_t {char* recording_name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
typedef int cp_response ;
typedef int cp_command ;


 size_t EINVAL ;
 int cpcmd (char*,char*,int,int *) ;
 struct vmlogrdr_priv_t* dev_get_drvdata (struct device*) ;
 int memset (char*,int,int) ;
 scalar_t__ recording_class_AB ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static ssize_t vmlogrdr_purge_store(struct device * dev,
        struct device_attribute *attr,
        const char * buf, size_t count)
{

 char cp_command[80];
 char cp_response[80];
 struct vmlogrdr_priv_t *priv = dev_get_drvdata(dev);

 if (buf[0] != '1')
  return -EINVAL;

 memset(cp_command, 0x00, sizeof(cp_command));
 memset(cp_response, 0x00, sizeof(cp_response));
 if (recording_class_AB)
  snprintf(cp_command, sizeof(cp_command),
    "RECORDING %s PURGE QID * ",
    priv->recording_name);
 else
  snprintf(cp_command, sizeof(cp_command),
    "RECORDING %s PURGE ",
    priv->recording_name);

 cpcmd(cp_command, cp_response, sizeof(cp_response), ((void*)0));

 return count;
}
