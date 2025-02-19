
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ib_gid {int dummy; } ib_gid ;
typedef int u8 ;
typedef int u16 ;
struct ib_device {int* gid_tbl_len; } ;


 int ENOENT ;
 int end_port (struct ib_device*) ;
 int ib_query_gid (struct ib_device*,int,int,union ib_gid*) ;
 int memcmp (union ib_gid*,union ib_gid*,int) ;
 int start_port (struct ib_device*) ;

int ib_find_gid(struct ib_device *device, union ib_gid *gid,
  u8 *port_num, u16 *index)
{
 union ib_gid tmp_gid;
 int ret, port, i;

 for (port = start_port(device); port <= end_port(device); ++port) {
  for (i = 0; i < device->gid_tbl_len[port - start_port(device)]; ++i) {
   ret = ib_query_gid(device, port, i, &tmp_gid);
   if (ret)
    return ret;
   if (!memcmp(&tmp_gid, gid, sizeof *gid)) {
    *port_num = port;
    if (index)
     *index = i;
    return 0;
   }
  }
 }

 return -ENOENT;
}
