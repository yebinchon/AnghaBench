
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct nodeinfo {int base_version; int class_version; int node_type; scalar_t__ node_guid; scalar_t__ port_guid; int * vendor_id; int local_port_num; int revision; void* device_id; void* partition_cap; int sys_guid; int num_ports; } ;
struct ipath_devdata {scalar_t__ ipath_guid; int ipath_majrev; int ipath_minrev; int ipath_vendorid; int ipath_deviceid; } ;
struct ib_smp {int status; scalar_t__ attr_mod; int data; } ;
struct ib_device {int phys_port_cnt; } ;
struct TYPE_2__ {int sys_image_guid; struct ipath_devdata* dd; } ;


 int IB_SMP_INVALID_FIELD ;
 int IPATH_SRC_OUI_1 ;
 int IPATH_SRC_OUI_2 ;
 int IPATH_SRC_OUI_3 ;
 void* cpu_to_be16 (int ) ;
 int cpu_to_be32 (int) ;
 int ipath_get_npkeys (struct ipath_devdata*) ;
 int reply (struct ib_smp*) ;
 TYPE_1__* to_idev (struct ib_device*) ;

__attribute__((used)) static int recv_subn_get_nodeinfo(struct ib_smp *smp,
      struct ib_device *ibdev, u8 port)
{
 struct nodeinfo *nip = (struct nodeinfo *)&smp->data;
 struct ipath_devdata *dd = to_idev(ibdev)->dd;
 u32 vendor, majrev, minrev;


 if (smp->attr_mod || (dd->ipath_guid == 0))
  smp->status |= IB_SMP_INVALID_FIELD;

 nip->base_version = 1;
 nip->class_version = 1;
 nip->node_type = 1;





 nip->num_ports = ibdev->phys_port_cnt;

 nip->sys_guid = to_idev(ibdev)->sys_image_guid;
 nip->node_guid = dd->ipath_guid;
 nip->port_guid = dd->ipath_guid;
 nip->partition_cap = cpu_to_be16(ipath_get_npkeys(dd));
 nip->device_id = cpu_to_be16(dd->ipath_deviceid);
 majrev = dd->ipath_majrev;
 minrev = dd->ipath_minrev;
 nip->revision = cpu_to_be32((majrev << 16) | minrev);
 nip->local_port_num = port;
 vendor = dd->ipath_vendorid;
 nip->vendor_id[0] = IPATH_SRC_OUI_1;
 nip->vendor_id[1] = IPATH_SRC_OUI_2;
 nip->vendor_id[2] = IPATH_SRC_OUI_3;

 return reply(smp);
}
