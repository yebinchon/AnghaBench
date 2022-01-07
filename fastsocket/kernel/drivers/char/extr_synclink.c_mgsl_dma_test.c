
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mgsl_struct {int params; int irq_spinlock; TYPE_1__* rx_buffer_list; TYPE_2__* tx_buffer_list; } ;
struct TYPE_4__ {unsigned int count; unsigned int rcc; int status; char* virt_addr; unsigned long phys_entry; } ;
struct TYPE_3__ {unsigned short status; unsigned int count; unsigned long phys_entry; int virt_addr; } ;
typedef int MGSL_PARAMS ;


 unsigned short BIT1 ;
 unsigned short BIT2 ;
 unsigned short BIT3 ;
 unsigned short BIT4 ;
 unsigned short BIT5 ;
 unsigned short BIT6 ;
 unsigned short BIT8 ;
 int DmaCmd_InitRxChannel ;
 int DmaCmd_InitTxChannel ;
 int NRARL ;
 int NRARU ;
 int NTARL ;
 int NTARU ;
 int RDMR ;
 int RMR ;
 int RTCmd_PurgeRxFifo ;
 int RTCmd_PurgeTxFifo ;
 int TCLR ;
 int TCSR ;
 int TCmd_SelectTicrTxFifostatus ;
 int TCmd_SendFrame ;
 unsigned int TESTFRAMESIZE ;
 int TICR ;
 int TMR ;
 int default_params ;
 unsigned long jiffies ;
 scalar_t__ memcmp (char*,int ,unsigned int) ;
 int memcpy (int *,int *,int) ;
 int memset (int ,int ,unsigned int) ;
 unsigned long msecs_to_jiffies (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int usc_DmaCmd (struct mgsl_struct*,int ) ;
 unsigned short usc_InDmaReg (struct mgsl_struct*,int ) ;
 int usc_InReg (struct mgsl_struct*,int ) ;
 int usc_OutDmaReg (struct mgsl_struct*,int ,unsigned short) ;
 int usc_OutReg (struct mgsl_struct*,int ,unsigned short) ;
 int usc_RTCmd (struct mgsl_struct*,int ) ;
 int usc_TCmd (struct mgsl_struct*,int ) ;
 int usc_enable_loopback (struct mgsl_struct*,int) ;
 int usc_reset (struct mgsl_struct*) ;
 int usc_set_sdlc_mode (struct mgsl_struct*) ;

__attribute__((used)) static bool mgsl_dma_test( struct mgsl_struct *info )
{
 unsigned short FifoLevel;
 unsigned long phys_addr;
 unsigned int FrameSize;
 unsigned int i;
 char *TmpPtr;
 bool rc = 1;
 unsigned short status=0;
 unsigned long EndTime;
 unsigned long flags;
 MGSL_PARAMS tmp_params;


 memcpy(&tmp_params,&info->params,sizeof(MGSL_PARAMS));

 memcpy(&info->params,&default_params,sizeof(MGSL_PARAMS));



 spin_lock_irqsave(&info->irq_spinlock,flags);



 usc_reset(info);
 usc_set_sdlc_mode(info);
 usc_enable_loopback(info,1);
 usc_OutDmaReg( info, RDMR, 0xe200 );

 spin_unlock_irqrestore(&info->irq_spinlock,flags);




 FrameSize = 40;




 info->tx_buffer_list[0].count = FrameSize;
 info->tx_buffer_list[0].rcc = FrameSize;
 info->tx_buffer_list[0].status = 0x4000;



 TmpPtr = info->tx_buffer_list[0].virt_addr;
 for (i = 0; i < FrameSize; i++ )
  *TmpPtr++ = i;




 info->rx_buffer_list[0].status = 0;
 info->rx_buffer_list[0].count = FrameSize + 4;



 memset( info->rx_buffer_list[0].virt_addr, 0, FrameSize + 4 );




 info->tx_buffer_list[1].count = 0;
 info->rx_buffer_list[1].count = 0;






 spin_lock_irqsave(&info->irq_spinlock,flags);


 usc_RTCmd( info, RTCmd_PurgeRxFifo );


 phys_addr = info->rx_buffer_list[0].phys_entry;
 usc_OutDmaReg( info, NRARL, (unsigned short)phys_addr );
 usc_OutDmaReg( info, NRARU, (unsigned short)(phys_addr >> 16) );


 usc_InDmaReg( info, RDMR );
 usc_DmaCmd( info, DmaCmd_InitRxChannel );


 usc_OutReg( info, RMR, (unsigned short)((usc_InReg(info, RMR) & 0xfffc) | 0x0002) );

 spin_unlock_irqrestore(&info->irq_spinlock,flags);







 EndTime = jiffies + msecs_to_jiffies(100);

 for(;;) {
  if (time_after(jiffies, EndTime)) {
   rc = 0;
   break;
  }

  spin_lock_irqsave(&info->irq_spinlock,flags);
  status = usc_InDmaReg( info, RDMR );
  spin_unlock_irqrestore(&info->irq_spinlock,flags);

  if ( !(status & BIT4) && (status & BIT5) ) {



   break;
  }
 }






 spin_lock_irqsave(&info->irq_spinlock,flags);




 usc_OutReg( info, TCLR, (unsigned short)info->tx_buffer_list[0].count );
 usc_RTCmd( info, RTCmd_PurgeTxFifo );



 phys_addr = info->tx_buffer_list[0].phys_entry;
 usc_OutDmaReg( info, NTARL, (unsigned short)phys_addr );
 usc_OutDmaReg( info, NTARU, (unsigned short)(phys_addr >> 16) );



 usc_OutReg( info, TCSR, (unsigned short)(( usc_InReg(info, TCSR) & 0x0f00) | 0xfa) );
 usc_DmaCmd( info, DmaCmd_InitTxChannel );



 usc_TCmd( info, TCmd_SelectTicrTxFifostatus );

 spin_unlock_irqrestore(&info->irq_spinlock,flags);







 EndTime = jiffies + msecs_to_jiffies(100);

 for(;;) {
  if (time_after(jiffies, EndTime)) {
   rc = 0;
   break;
  }

  spin_lock_irqsave(&info->irq_spinlock,flags);
  FifoLevel = usc_InReg(info, TICR) >> 8;
  spin_unlock_irqrestore(&info->irq_spinlock,flags);

  if ( FifoLevel < 16 )
   break;
  else
   if ( FrameSize < 32 ) {


    if ( FifoLevel <= (32 - FrameSize) )
     break;
   }
 }


 if ( rc )
 {


  spin_lock_irqsave(&info->irq_spinlock,flags);


  usc_TCmd( info, TCmd_SendFrame );
  usc_OutReg( info, TMR, (unsigned short)((usc_InReg(info, TMR) & 0xfffc) | 0x0002) );

  spin_unlock_irqrestore(&info->irq_spinlock,flags);







  EndTime = jiffies + msecs_to_jiffies(100);



  spin_lock_irqsave(&info->irq_spinlock,flags);
  status = usc_InReg( info, TCSR );
  spin_unlock_irqrestore(&info->irq_spinlock,flags);

  while ( !(status & (BIT6+BIT5+BIT4+BIT2+BIT1)) ) {
   if (time_after(jiffies, EndTime)) {
    rc = 0;
    break;
   }

   spin_lock_irqsave(&info->irq_spinlock,flags);
   status = usc_InReg( info, TCSR );
   spin_unlock_irqrestore(&info->irq_spinlock,flags);
  }
 }


 if ( rc ){

  if ( status & (BIT5 + BIT1) )
   rc = 0;
 }

 if ( rc ) {



  EndTime = jiffies + msecs_to_jiffies(100);


  status=info->rx_buffer_list[0].status;
  while ( status == 0 ) {
   if (time_after(jiffies, EndTime)) {
    rc = 0;
    break;
   }
   status=info->rx_buffer_list[0].status;
  }
 }


 if ( rc ) {

  status = info->rx_buffer_list[0].status;

  if ( status & (BIT8 + BIT3 + BIT1) ) {

   rc = 0;
  } else {
   if ( memcmp( info->tx_buffer_list[0].virt_addr ,
    info->rx_buffer_list[0].virt_addr, FrameSize ) ){
    rc = 0;
   }
  }
 }

 spin_lock_irqsave(&info->irq_spinlock,flags);
 usc_reset( info );
 spin_unlock_irqrestore(&info->irq_spinlock,flags);


 memcpy(&info->params,&tmp_params,sizeof(MGSL_PARAMS));

 return rc;

}
