
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port_operations {int postreset; int softreset; int prereset; int * hardreset; } ;
struct ata_port {int link; struct ata_port_operations* ops; } ;
typedef int * ata_reset_fn_t ;


 int ata_do_eh (struct ata_port*,int ,int ,int *,int ) ;
 scalar_t__ ata_is_builtin_hardreset (int *) ;
 int sata_scr_valid (int *) ;

void ata_std_error_handler(struct ata_port *ap)
{
 struct ata_port_operations *ops = ap->ops;
 ata_reset_fn_t hardreset = ops->hardreset;


 if (ata_is_builtin_hardreset(hardreset) && !sata_scr_valid(&ap->link))
  hardreset = ((void*)0);

 ata_do_eh(ap, ops->prereset, ops->softreset, hardreset, ops->postreset);
}
