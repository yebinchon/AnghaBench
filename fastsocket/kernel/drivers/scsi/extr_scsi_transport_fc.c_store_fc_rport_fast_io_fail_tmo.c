
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_rport {scalar_t__ port_state; int fast_io_fail_tmo; int dev_loss_tmo; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EBUSY ;
 size_t EINVAL ;
 scalar_t__ FC_PORTSTATE_BLOCKED ;
 scalar_t__ FC_PORTSTATE_DELETED ;
 scalar_t__ FC_PORTSTATE_NOTPRESENT ;
 int SCSI_DEVICE_BLOCK_MAX_TIMEOUT ;
 int simple_strtoul (char const*,char**,int ) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 struct fc_rport* transport_class_to_rport (struct device*) ;

__attribute__((used)) static ssize_t
store_fc_rport_fast_io_fail_tmo(struct device *dev,
    struct device_attribute *attr, const char *buf,
    size_t count)
{
 int val;
 char *cp;
 struct fc_rport *rport = transport_class_to_rport(dev);

 if ((rport->port_state == FC_PORTSTATE_BLOCKED) ||
     (rport->port_state == FC_PORTSTATE_DELETED) ||
     (rport->port_state == FC_PORTSTATE_NOTPRESENT))
  return -EBUSY;
 if (strncmp(buf, "off", 3) == 0)
  rport->fast_io_fail_tmo = -1;
 else {
  val = simple_strtoul(buf, &cp, 0);
  if ((*cp && (*cp != '\n')) || (val < 0))
   return -EINVAL;




  if ((val >= rport->dev_loss_tmo) ||
      (val > SCSI_DEVICE_BLOCK_MAX_TIMEOUT))
   return -EINVAL;

  rport->fast_io_fail_tmo = val;
 }
 return count;
}
