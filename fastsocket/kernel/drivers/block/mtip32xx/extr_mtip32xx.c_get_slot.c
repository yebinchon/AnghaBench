
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mtip_port {TYPE_1__* dd; int allocated; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int slot_groups; TYPE_2__* pdev; } ;


 int dev_warn (int *,char*) ;
 int find_next_zero_bit (int ,unsigned int,int) ;
 scalar_t__ mtip_check_surprise_removal (TYPE_2__*) ;
 int mtip_command_cleanup (TYPE_1__*) ;
 int test_and_set_bit (int,int ) ;

__attribute__((used)) static int get_slot(struct mtip_port *port)
{
 int slot, i;
 unsigned int num_command_slots = port->dd->slot_groups * 32;
 for (i = 0; i < 10; i++) {
  slot = find_next_zero_bit(port->allocated,
      num_command_slots, 1);
  if ((slot < num_command_slots) &&
      (!test_and_set_bit(slot, port->allocated)))
   return slot;
 }
 dev_warn(&port->dd->pdev->dev, "Failed to get a tag.\n");

 if (mtip_check_surprise_removal(port->dd->pdev)) {

  mtip_command_cleanup(port->dd);
 }
 return -1;
}
