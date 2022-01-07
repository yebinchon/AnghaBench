
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rwrt_feature_desc {int curr; int feature_code; } ;
struct cdrom_device_info {int dummy; } ;


 scalar_t__ CDF_RWRT ;
 int CD_OPEN ;
 scalar_t__ be16_to_cpu (int ) ;
 int cdinfo (int ,char*) ;
 int cdrom_get_random_writable (struct cdrom_device_info*,struct rwrt_feature_desc*) ;
 int cdrom_has_defect_mgt (struct cdrom_device_info*) ;

__attribute__((used)) static int cdrom_ram_open_write(struct cdrom_device_info *cdi)
{
 struct rwrt_feature_desc rfd;
 int ret;

 if ((ret = cdrom_has_defect_mgt(cdi)))
  return ret;

 if ((ret = cdrom_get_random_writable(cdi, &rfd)))
  return ret;
 else if (CDF_RWRT == be16_to_cpu(rfd.feature_code))
  ret = !rfd.curr;

 cdinfo(CD_OPEN, "can open for random write\n");
 return ret;
}
