
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct via_isa_bridge {int flags; } ;
struct ata_port {TYPE_1__* host; } ;
struct ata_device {int pio_mode; } ;
struct TYPE_2__ {struct via_isa_bridge* private_data; } ;


 int VIA_BAD_AST ;
 int VIA_UDMA ;
 int via_do_set_mode (struct ata_port*,struct ata_device*,int ,int,int,int) ;

__attribute__((used)) static void via_set_piomode(struct ata_port *ap, struct ata_device *adev)
{
 const struct via_isa_bridge *config = ap->host->private_data;
 int set_ast = (config->flags & VIA_BAD_AST) ? 0 : 1;
 int mode = config->flags & VIA_UDMA;
 static u8 tclock[5] = { 1, 1, 2, 3, 4 };
 static u8 udma[5] = { 0, 33, 66, 100, 133 };

 via_do_set_mode(ap, adev, adev->pio_mode, tclock[mode], set_ast, udma[mode]);
}
