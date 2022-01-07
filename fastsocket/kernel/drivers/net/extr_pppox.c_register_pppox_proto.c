
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pppox_proto {int dummy; } ;


 int EALREADY ;
 int EINVAL ;
 int PX_MAX_PROTO ;
 struct pppox_proto** pppox_protos ;

int register_pppox_proto(int proto_num, struct pppox_proto *pp)
{
 if (proto_num < 0 || proto_num > PX_MAX_PROTO)
  return -EINVAL;
 if (pppox_protos[proto_num])
  return -EALREADY;
 pppox_protos[proto_num] = pp;
 return 0;
}
