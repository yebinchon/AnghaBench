
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc390_acb {size_t AdapterIndex; int ACBFlag; int * pActiveDCB; scalar_t__ Connected; scalar_t__ last_reset; } ;


 int CLEAR_FIFO_CMD ;
 int DC390_write8 (int ,int ) ;
 int DMA_Cmd ;
 int DMA_IDLE_CMD ;
 size_t EE_DELAY ;
 int HZ ;
 int RESET_DETECT ;
 int RESET_DEV ;
 int RESET_DONE ;
 int ScsiCmd ;
 int dc390_DoingSRB_Done (struct dc390_acb*,int *) ;
 int dc390_ResetDevParam (struct dc390_acb*) ;
 int** dc390_eepromBuf ;
 int dc390_laststatus ;
 scalar_t__ jiffies ;
 int printk (char*,int ) ;
 int udelay (int) ;

__attribute__((used)) static void
dc390_ScsiRstDetect( struct dc390_acb* pACB )
{
    printk ("DC390: Rst_Detect: laststat = %08x\n", dc390_laststatus);


    DC390_write8 (DMA_Cmd, DMA_IDLE_CMD);


    udelay (1000);
    DC390_write8 (ScsiCmd, CLEAR_FIFO_CMD);
    pACB->last_reset = jiffies + 5*HZ/2
      + HZ * dc390_eepromBuf[pACB->AdapterIndex][EE_DELAY];
    pACB->Connected = 0;

    if( pACB->ACBFlag & RESET_DEV )
 pACB->ACBFlag |= RESET_DONE;
    else
    {
 pACB->ACBFlag |= RESET_DETECT;

 dc390_ResetDevParam( pACB );
 dc390_DoingSRB_Done( pACB, ((void*)0));

 pACB->pActiveDCB = ((void*)0);
 pACB->ACBFlag = 0;
    }
    return;
}
