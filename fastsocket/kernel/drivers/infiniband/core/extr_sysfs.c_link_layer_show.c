
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_attribute {int dummy; } ;
struct ib_port {int port_num; int ibdev; } ;
typedef int ssize_t ;




 int rdma_port_get_link_layer (int ,int ) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t link_layer_show(struct ib_port *p, struct port_attribute *unused,
          char *buf)
{
 switch (rdma_port_get_link_layer(p->ibdev, p->port_num)) {
 case 128:
  return sprintf(buf, "%s\n", "InfiniBand");
 case 129:
  return sprintf(buf, "%s\n", "Ethernet");
 default:
  return sprintf(buf, "%s\n", "Unknown");
 }
}
