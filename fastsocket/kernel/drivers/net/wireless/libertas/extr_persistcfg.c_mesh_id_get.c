
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mesh_id_len; char* mesh_id; } ;
struct TYPE_4__ {TYPE_1__ val; } ;
struct mrvl_mesh_defaults {TYPE_2__ meshie; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int IW_ESSID_MAX_SIZE ;
 int PAGE_SIZE ;
 int lbs_pr_err (char*) ;
 int mesh_get_default_parameters (struct device*,struct mrvl_mesh_defaults*) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static ssize_t mesh_id_get(struct device *dev, struct device_attribute *attr,
      char *buf)
{
 struct mrvl_mesh_defaults defs;
 int maxlen;
 int ret;

 ret = mesh_get_default_parameters(dev, &defs);

 if (ret)
  return ret;

 if (defs.meshie.val.mesh_id_len > IW_ESSID_MAX_SIZE) {
  lbs_pr_err("inconsistent mesh ID length");
  defs.meshie.val.mesh_id_len = IW_ESSID_MAX_SIZE;
 }


 maxlen = defs.meshie.val.mesh_id_len + 2;
 maxlen = (PAGE_SIZE > maxlen) ? maxlen : PAGE_SIZE;

 defs.meshie.val.mesh_id[defs.meshie.val.mesh_id_len] = '\0';

 return snprintf(buf, maxlen, "%s\n", defs.meshie.val.mesh_id);
}
