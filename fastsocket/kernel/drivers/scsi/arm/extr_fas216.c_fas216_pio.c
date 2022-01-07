
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct scsi_pointer {scalar_t__ this_residual; } ;
typedef scalar_t__ fasdmadir_t ;
struct TYPE_7__ {struct scsi_pointer SCp; } ;
struct TYPE_8__ {TYPE_1__ scsi; } ;
typedef TYPE_2__ FAS216_Info ;


 scalar_t__ DMA_OUT ;
 int REG_FF ;
 int fas216_checkmagic (TYPE_2__*) ;
 int fas216_readb (TYPE_2__*,int ) ;
 int fas216_writeb (TYPE_2__*,int ,int ) ;
 int get_next_SCp_byte (struct scsi_pointer*) ;
 int next_SCp (struct scsi_pointer*) ;
 int put_next_SCp_byte (struct scsi_pointer*,int ) ;

__attribute__((used)) static void fas216_pio(FAS216_Info *info, fasdmadir_t direction)
{
 struct scsi_pointer *SCp = &info->scsi.SCp;

 fas216_checkmagic(info);

 if (direction == DMA_OUT)
  fas216_writeb(info, REG_FF, get_next_SCp_byte(SCp));
 else
  put_next_SCp_byte(SCp, fas216_readb(info, REG_FF));

 if (SCp->this_residual == 0)
  next_SCp(SCp);
}
