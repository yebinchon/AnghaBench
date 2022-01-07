
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* pc; TYPE_2__* hwif; } ;
typedef TYPE_4__ ide_drive_t ;
struct TYPE_9__ {int c; } ;
struct TYPE_8__ {TYPE_1__* tp_ops; } ;
struct TYPE_7__ {int (* output_data ) (TYPE_4__*,int *,int ,int) ;} ;


 int WAIT_FLOPPY_CMD ;
 int stub1 (TYPE_4__*,int *,int ,int) ;

__attribute__((used)) static int ide_delayed_transfer_pc(ide_drive_t *drive)
{

 drive->hwif->tp_ops->output_data(drive, ((void*)0), drive->pc->c, 12);


 return WAIT_FLOPPY_CMD;
}
