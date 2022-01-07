
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_3__ {int flags; } ;
struct mgsl_struct {int current_rx_buffer; int rx_buffer_count; TYPE_1__ params; TYPE_2__* rx_buffer_list; } ;
struct TYPE_4__ {int phys_entry; int count; scalar_t__ status; } ;
typedef TYPE_2__ DMABUFFERENTRY ;


 int BIT1 ;
 int BIT13 ;
 scalar_t__ BIT2 ;
 scalar_t__ BIT3 ;
 int CCSR ;
 int DICR ;
 int DISABLE_UNCONDITIONAL ;
 unsigned long DMABUFFERSIZE ;
 int DmaCmd_InitRxChannel ;
 int DmaCmd_PauseRxChannel ;
 int ENABLE_AUTO_DCD ;
 int ENABLE_UNCONDITIONAL ;
 int HDLC_FLAG_AUTO_DCD ;
 int NRARL ;
 int NRARU ;
 int RCmd_EnterHuntmode ;
 int RDIAR ;
 int RECEIVE_DATA ;
 int RECEIVE_STATUS ;
 int RTCmd_PurgeRxFifo ;
 int RXSTATUS_ALL ;
 int mgsl_reset_rx_dma_buffers (struct mgsl_struct*) ;
 int usc_ClearIrqPendingBits (struct mgsl_struct*,int) ;
 int usc_DmaCmd (struct mgsl_struct*,int ) ;
 int usc_EnableInterrupts (struct mgsl_struct*,int) ;
 int usc_EnableReceiver (struct mgsl_struct*,int ) ;
 int usc_InDmaReg (struct mgsl_struct*,int ) ;
 int usc_InReg (struct mgsl_struct*,int ) ;
 int usc_OutDmaReg (struct mgsl_struct*,int ,scalar_t__) ;
 int usc_OutReg (struct mgsl_struct*,int ,scalar_t__) ;
 int usc_RCmd (struct mgsl_struct*,int ) ;
 int usc_RTCmd (struct mgsl_struct*,int ) ;
 int usc_UnlatchRxstatusBits (struct mgsl_struct*,int) ;

__attribute__((used)) static void usc_process_rxoverrun_sync( struct mgsl_struct *info )
{
 int start_index;
 int end_index;
 int frame_start_index;
 bool start_of_frame_found = 0;
 bool end_of_frame_found = 0;
 bool reprogram_dma = 0;

 DMABUFFERENTRY *buffer_list = info->rx_buffer_list;
 u32 phys_addr;

 usc_DmaCmd( info, DmaCmd_PauseRxChannel );
 usc_RCmd( info, RCmd_EnterHuntmode );
 usc_RTCmd( info, RTCmd_PurgeRxFifo );




 frame_start_index = start_index = end_index = info->current_rx_buffer;






 while( !buffer_list[end_index].count )
 {



  if ( !start_of_frame_found )
  {
   start_of_frame_found = 1;
   frame_start_index = end_index;
   end_of_frame_found = 0;
  }

  if ( buffer_list[end_index].status )
  {






   start_of_frame_found = 0;
   end_of_frame_found = 1;
  }


    end_index++;
    if ( end_index == info->rx_buffer_count )
     end_index = 0;

  if ( start_index == end_index )
  {



   mgsl_reset_rx_dma_buffers( info );
   frame_start_index = 0;
   start_of_frame_found = 0;
   reprogram_dma = 1;
   break;
  }
 }

 if ( start_of_frame_found && !end_of_frame_found )
 {







  start_index = frame_start_index;

  do
  {
   *((unsigned long *)&(info->rx_buffer_list[start_index++].count)) = DMABUFFERSIZE;


     if ( start_index == info->rx_buffer_count )
      start_index = 0;

  } while( start_index != end_index );

  reprogram_dma = 1;
 }

 if ( reprogram_dma )
 {
  usc_UnlatchRxstatusBits(info,RXSTATUS_ALL);
  usc_ClearIrqPendingBits(info, RECEIVE_DATA|RECEIVE_STATUS);
  usc_UnlatchRxstatusBits(info, RECEIVE_DATA|RECEIVE_STATUS);

  usc_EnableReceiver(info,DISABLE_UNCONDITIONAL);


  usc_OutReg( info, CCSR, (u16)(usc_InReg(info,CCSR) | BIT13) );


  phys_addr = info->rx_buffer_list[frame_start_index].phys_entry;
  usc_OutDmaReg( info, NRARL, (u16)phys_addr );
  usc_OutDmaReg( info, NRARU, (u16)(phys_addr >> 16) );

  usc_UnlatchRxstatusBits( info, RXSTATUS_ALL );
  usc_ClearIrqPendingBits( info, RECEIVE_DATA + RECEIVE_STATUS );
  usc_EnableInterrupts( info, RECEIVE_STATUS );




  usc_OutDmaReg( info, RDIAR, BIT3 + BIT2 );
  usc_OutDmaReg( info, DICR, (u16)(usc_InDmaReg(info,DICR) | BIT1) );
  usc_DmaCmd( info, DmaCmd_InitRxChannel );
  if ( info->params.flags & HDLC_FLAG_AUTO_DCD )
   usc_EnableReceiver(info,ENABLE_AUTO_DCD);
  else
   usc_EnableReceiver(info,ENABLE_UNCONDITIONAL);
 }
 else
 {

  usc_OutReg( info, CCSR, (u16)(usc_InReg(info,CCSR) | BIT13) );
  usc_RTCmd( info, RTCmd_PurgeRxFifo );
 }

}
