
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int method; scalar_t__ mgmt_class; int attr_mod; } ;
struct ib_mad {TYPE_1__ mad_hdr; } ;


 int IB_BM_ATTR_MOD_RESP ;
 scalar_t__ IB_MGMT_CLASS_BM ;
 int IB_MGMT_METHOD_RESP ;
 int IB_MGMT_METHOD_TRAP_REPRESS ;

int ib_response_mad(struct ib_mad *mad)
{
 return ((mad->mad_hdr.method & IB_MGMT_METHOD_RESP) ||
  (mad->mad_hdr.method == IB_MGMT_METHOD_TRAP_REPRESS) ||
  ((mad->mad_hdr.mgmt_class == IB_MGMT_CLASS_BM) &&
   (mad->mad_hdr.attr_mod & IB_BM_ATTR_MOD_RESP)));
}
