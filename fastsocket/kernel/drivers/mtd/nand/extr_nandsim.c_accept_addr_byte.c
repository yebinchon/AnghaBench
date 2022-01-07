
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint ;
typedef int u_char ;
struct TYPE_4__ {int pgaddrbytes; int secaddrbytes; } ;
struct TYPE_3__ {int count; int column; int row; } ;
struct nandsim {TYPE_2__ geom; TYPE_1__ regs; } ;



__attribute__((used)) static inline void accept_addr_byte(struct nandsim *ns, u_char bt)
{
 uint byte = (uint)bt;

 if (ns->regs.count < (ns->geom.pgaddrbytes - ns->geom.secaddrbytes))
  ns->regs.column |= (byte << 8 * ns->regs.count);
 else {
  ns->regs.row |= (byte << 8 * (ns->regs.count -
      ns->geom.pgaddrbytes +
      ns->geom.secaddrbytes));
 }

 return;
}
