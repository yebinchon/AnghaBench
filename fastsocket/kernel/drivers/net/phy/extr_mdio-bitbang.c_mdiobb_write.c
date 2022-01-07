
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mii_bus {struct mdiobb_ctrl* priv; } ;
struct mdiobb_ctrl {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_mdio_dir ) (struct mdiobb_ctrl*,int ) ;} ;


 int MDIO_WRITE ;
 int mdiobb_cmd (struct mdiobb_ctrl*,int ,int,int) ;
 int mdiobb_get_bit (struct mdiobb_ctrl*) ;
 int mdiobb_send_bit (struct mdiobb_ctrl*,int) ;
 int mdiobb_send_num (struct mdiobb_ctrl*,int ,int) ;
 int stub1 (struct mdiobb_ctrl*,int ) ;

__attribute__((used)) static int mdiobb_write(struct mii_bus *bus, int phy, int reg, u16 val)
{
 struct mdiobb_ctrl *ctrl = bus->priv;

 mdiobb_cmd(ctrl, MDIO_WRITE, phy, reg);


 mdiobb_send_bit(ctrl, 1);
 mdiobb_send_bit(ctrl, 0);

 mdiobb_send_num(ctrl, val, 16);

 ctrl->ops->set_mdio_dir(ctrl, 0);
 mdiobb_get_bit(ctrl);
 return 0;
}
