
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u64 ;
struct fc_internal {TYPE_1__* f; } ;
struct fc_host_statistics {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int transportt; } ;
typedef int ssize_t ;
struct TYPE_2__ {struct fc_host_statistics* (* get_fc_host_stats ) (struct Scsi_Host*) ;} ;


 int ENOENT ;
 int WARN_ON (int) ;
 int snprintf (char*,int,char*,unsigned long long) ;
 struct fc_host_statistics* stub1 (struct Scsi_Host*) ;
 struct fc_internal* to_fc_internal (int ) ;
 struct Scsi_Host* transport_class_to_shost (struct device const*) ;

__attribute__((used)) static ssize_t
fc_stat_show(const struct device *dev, char *buf, unsigned long offset)
{
 struct Scsi_Host *shost = transport_class_to_shost(dev);
 struct fc_internal *i = to_fc_internal(shost->transportt);
 struct fc_host_statistics *stats;
 ssize_t ret = -ENOENT;

 if (offset > sizeof(struct fc_host_statistics) ||
     offset % sizeof(u64) != 0)
  WARN_ON(1);

 if (i->f->get_fc_host_stats) {
  stats = (i->f->get_fc_host_stats)(shost);
  if (stats)
   ret = snprintf(buf, 20, "0x%llx\n",
         (unsigned long long)*(u64 *)(((u8 *) stats) + offset));
 }
 return ret;
}
