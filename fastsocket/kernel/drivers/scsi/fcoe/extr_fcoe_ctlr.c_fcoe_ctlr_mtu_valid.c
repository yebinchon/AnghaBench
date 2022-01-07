
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcoe_fcf {int flags; } ;


 int FIP_FL_SOL ;

__attribute__((used)) static inline int fcoe_ctlr_mtu_valid(const struct fcoe_fcf *fcf)
{
 return (fcf->flags & FIP_FL_SOL) != 0;
}
