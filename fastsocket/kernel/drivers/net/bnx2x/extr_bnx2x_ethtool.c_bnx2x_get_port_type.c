
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_4__ {TYPE_1__* phy; } ;
struct bnx2x {TYPE_2__ link_params; } ;
struct TYPE_3__ {int media_type; } ;
 int PORT_DA ;
 int PORT_FIBRE ;
 int PORT_NONE ;
 int PORT_OTHER ;
 int PORT_TP ;
 size_t bnx2x_get_cur_phy_idx (struct bnx2x*) ;

__attribute__((used)) static int bnx2x_get_port_type(struct bnx2x *bp)
{
 int port_type;
 u32 phy_idx = bnx2x_get_cur_phy_idx(bp);
 switch (bp->link_params.phy[phy_idx].media_type) {
 case 131:
 case 130:
 case 128:
 case 133:
 case 135:
  port_type = PORT_FIBRE;
  break;
 case 134:
  port_type = PORT_DA;
  break;
 case 136:
  port_type = PORT_TP;
  break;
 case 132:
  port_type = PORT_NONE;
  break;
 case 129:
 default:
  port_type = PORT_OTHER;
  break;
 }
 return port_type;
}
