
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union ib_gid {int * raw; } ;
typedef int u8 ;
struct nes_vnic {TYPE_1__* netdev; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {int dev_addr; } ;


 int memcpy (int *,int ,int) ;
 int memset (int *,int ,int) ;
 struct nes_vnic* to_nesvnic (struct ib_device*) ;

__attribute__((used)) static int nes_query_gid(struct ib_device *ibdev, u8 port,
  int index, union ib_gid *gid)
{
 struct nes_vnic *nesvnic = to_nesvnic(ibdev);

 memset(&(gid->raw[0]), 0, sizeof(gid->raw));
 memcpy(&(gid->raw[0]), nesvnic->netdev->dev_addr, 6);

 return 0;
}
