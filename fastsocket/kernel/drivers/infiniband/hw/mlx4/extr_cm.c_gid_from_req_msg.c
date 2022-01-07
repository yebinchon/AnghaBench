
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ib_gid {int dummy; } ib_gid ;
struct ib_mad {int dummy; } ;
struct ib_device {int dummy; } ;
struct cm_req_msg {union ib_gid primary_path_sgid; } ;



__attribute__((used)) static union ib_gid gid_from_req_msg(struct ib_device *ibdev, struct ib_mad *mad)
{
 struct cm_req_msg *msg = (struct cm_req_msg *)mad;

 return msg->primary_path_sgid;
}
