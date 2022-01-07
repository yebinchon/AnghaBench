
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_rport {int port_id; scalar_t__ roles; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;






 scalar_t__ FC_PORT_ROLE_UNKNOWN ;

 int FC_WELLKNOWN_PORTID_MASK ;
 int FC_WELLKNOWN_ROLE_MASK ;
 int get_fc_port_roles_names (scalar_t__,char*) ;
 int snprintf (char*,int,char*) ;
 struct fc_rport* transport_class_to_rport (struct device*) ;

__attribute__((used)) static ssize_t
show_fc_rport_roles (struct device *dev, struct device_attribute *attr,
       char *buf)
{
 struct fc_rport *rport = transport_class_to_rport(dev);


 if ((rport->port_id != -1) &&
     (rport->port_id & FC_WELLKNOWN_PORTID_MASK) ==
     FC_WELLKNOWN_PORTID_MASK) {
  switch (rport->port_id & FC_WELLKNOWN_ROLE_MASK) {
  case 130:
   return snprintf(buf, 30, "Fabric Port\n");
  case 131:
   return snprintf(buf, 30, "Fabric Controller\n");
  case 132:
   return snprintf(buf, 30, "Directory Server\n");
  case 128:
   return snprintf(buf, 30, "Time Server\n");
  case 129:
   return snprintf(buf, 30, "Management Server\n");
  default:
   return snprintf(buf, 30, "Unknown Fabric Entity\n");
  }
 } else {
  if (rport->roles == FC_PORT_ROLE_UNKNOWN)
   return snprintf(buf, 20, "unknown\n");
  return get_fc_port_roles_names(rport->roles, buf);
 }
}
