
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int * iface_ipv6_1; int * iface_ipv6_0; } ;


 int iscsi_destroy_iface (int *) ;

__attribute__((used)) static void qla4xxx_destroy_ipv6_iface(struct scsi_qla_host *ha)
{
 if (ha->iface_ipv6_0) {
  iscsi_destroy_iface(ha->iface_ipv6_0);
  ha->iface_ipv6_0 = ((void*)0);
 }
 if (ha->iface_ipv6_1) {
  iscsi_destroy_iface(ha->iface_ipv6_1);
  ha->iface_ipv6_1 = ((void*)0);
 }
}
