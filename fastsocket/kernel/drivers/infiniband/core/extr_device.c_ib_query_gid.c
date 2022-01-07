
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ib_gid {int dummy; } ib_gid ;
typedef int u8 ;
struct ib_device {int (* query_gid ) (struct ib_device*,int ,int,union ib_gid*) ;} ;


 int stub1 (struct ib_device*,int ,int,union ib_gid*) ;

int ib_query_gid(struct ib_device *device,
   u8 port_num, int index, union ib_gid *gid)
{
 return device->query_gid(device, port_num, index, gid);
}
