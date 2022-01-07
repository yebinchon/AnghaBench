
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_3__ {int owned; } ;
typedef TYPE_1__ cap_t ;


 int TPM_CAP_PROP_OWNER ;
 scalar_t__ sprintf (char*,char*,int) ;
 scalar_t__ tpm_getcap (struct device*,int ,TYPE_1__*,char*) ;

ssize_t tpm_show_owned(struct device * dev, struct device_attribute * attr,
   char *buf)
{
 cap_t cap;
 ssize_t rc;

 rc = tpm_getcap(dev, TPM_CAP_PROP_OWNER, &cap,
    "attempting to determine the owner state");
 if (rc)
  return 0;

 rc = sprintf(buf, "%d\n", cap.owned);
 return rc;
}
