
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vga_switcheroo_client {int pwr_state; int pdev; TYPE_2__* ops; int id; } ;
struct TYPE_6__ {TYPE_1__* handler; } ;
struct TYPE_5__ {int (* set_gpu_state ) (int ,int ) ;} ;
struct TYPE_4__ {int (* power_state ) (int ,int ) ;} ;


 int VGA_SWITCHEROO_ON ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;
 TYPE_3__ vgasr_priv ;

__attribute__((used)) static int vga_switchon(struct vga_switcheroo_client *client)
{
 if (vgasr_priv.handler->power_state)
  vgasr_priv.handler->power_state(client->id, VGA_SWITCHEROO_ON);

 client->ops->set_gpu_state(client->pdev, VGA_SWITCHEROO_ON);
 client->pwr_state = VGA_SWITCHEROO_ON;
 return 0;
}
