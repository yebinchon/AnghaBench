
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fc_vport {int flags; scalar_t__ vport_state; } ;
struct fc_internal {TYPE_1__* f; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int transportt; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* vport_disable ) (struct fc_vport*,int) ;} ;


 int EALREADY ;
 int EBUSY ;
 int EINVAL ;
 int FC_VPORT_CREATING ;
 int FC_VPORT_DEL ;
 scalar_t__ FC_VPORT_DISABLED ;
 int stub1 (struct fc_vport*,int) ;
 struct fc_internal* to_fc_internal (int ) ;
 struct fc_vport* transport_class_to_vport (struct device*) ;
 struct Scsi_Host* vport_to_shost (struct fc_vport*) ;

__attribute__((used)) static ssize_t
store_fc_vport_disable(struct device *dev, struct device_attribute *attr,
         const char *buf,
      size_t count)
{
 struct fc_vport *vport = transport_class_to_vport(dev);
 struct Scsi_Host *shost = vport_to_shost(vport);
 struct fc_internal *i = to_fc_internal(shost->transportt);
 int stat;

 if (vport->flags & (FC_VPORT_DEL | FC_VPORT_CREATING))
  return -EBUSY;

 if (*buf == '0') {
  if (vport->vport_state != FC_VPORT_DISABLED)
   return -EALREADY;
 } else if (*buf == '1') {
  if (vport->vport_state == FC_VPORT_DISABLED)
   return -EALREADY;
 } else
  return -EINVAL;

 stat = i->f->vport_disable(vport, ((*buf == '0') ? 0 : 1));
 return stat ? stat : count;
}
