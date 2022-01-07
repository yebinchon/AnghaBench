
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc390_acb {scalar_t__ Connected; } ;


 int CLEAR_FIFO_CMD ;
 int DC390_write8 (int ,int ) ;
 int DMA_Cmd ;
 int DMA_IDLE_CMD ;
 int RST_SCSI_BUS_CMD ;
 int ScsiCmd ;

__attribute__((used)) static void
dc390_ResetSCSIBus( struct dc390_acb* pACB )
{




    DC390_write8 (ScsiCmd, CLEAR_FIFO_CMD);
    DC390_write8 (DMA_Cmd, DMA_IDLE_CMD);
    DC390_write8 (ScsiCmd, RST_SCSI_BUS_CMD);
    pACB->Connected = 0;

    return;
}
