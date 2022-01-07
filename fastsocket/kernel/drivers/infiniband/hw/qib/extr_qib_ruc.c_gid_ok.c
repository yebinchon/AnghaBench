
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ interface_id; scalar_t__ subnet_prefix; } ;
union ib_gid {TYPE_1__ global; } ;
typedef scalar_t__ __be64 ;


 scalar_t__ IB_DEFAULT_GID_PREFIX ;

__attribute__((used)) static int gid_ok(union ib_gid *gid, __be64 gid_prefix, __be64 id)
{
 return (gid->global.interface_id == id &&
  (gid->global.subnet_prefix == gid_prefix ||
   gid->global.subnet_prefix == IB_DEFAULT_GID_PREFIX));
}
