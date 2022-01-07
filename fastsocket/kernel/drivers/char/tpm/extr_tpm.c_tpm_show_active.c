
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_4__ {int deactivated; } ;
struct TYPE_5__ {TYPE_1__ perm_flags; } ;
typedef TYPE_2__ cap_t ;


 int TPM_CAP_FLAG_PERM ;
 scalar_t__ sprintf (char*,char*,int) ;
 scalar_t__ tpm_getcap (struct device*,int ,TYPE_2__*,char*) ;

ssize_t tpm_show_active(struct device * dev, struct device_attribute * attr,
   char *buf)
{
 cap_t cap;
 ssize_t rc;

 rc = tpm_getcap(dev, TPM_CAP_FLAG_PERM, &cap,
    "attempting to determine the permanent active state");
 if (rc)
  return 0;

 rc = sprintf(buf, "%d\n", !cap.perm_flags.deactivated);
 return rc;
}
