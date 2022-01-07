
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef TYPE_4__* i2eBordStrPtr ;
typedef TYPE_5__* i2ChanStrPtr ;
typedef TYPE_6__* flowStatPtr ;
typedef int flowStat ;
typedef int * failStatPtr ;
typedef int failStat ;
typedef int * debugStatPtr ;
typedef int debugStat ;
typedef void** cntStatPtr ;
typedef int cntStat ;
typedef int * bidStatPtr ;
typedef int bidStat ;
struct TYPE_20__ {scalar_t__ asof; scalar_t__ room; } ;
struct TYPE_17__ {int rx; int overrun; int frame; int parity; int brk; int rng; int dsr; int dcd; int cts; } ;
struct TYPE_16__ {scalar_t__ room; scalar_t__ asof; } ;
struct TYPE_15__ {int expires; } ;
struct TYPE_19__ {int hotKeyIn; unsigned short Ibuf_stuff; unsigned char* Ibuf; int dataSetIn; int channelNeeds; int tqueue_status; int dss_now_wait; TYPE_3__ icount; int channelFail; void* channelRcount; void* channelTcount; int channelStatus; int pTTY; TYPE_2__ outfl; TYPE_1__ BookmarkTimer; int pBookmarkWait; int bookMarks; int tqueue_input; int Ibuf_spinlock; } ;
struct TYPE_18__ {int* i2eLeadoffWord; int got_input; int i2eFatal; int i2eChannelCnt; int i2eOutMailWaiting; int read_fifo_spinlock; int channelBtypes; scalar_t__ i2eChannelPtr; } ;


 int CHANN ;
 int CHANNEL_OF (int*) ;
 int CMD_COUNT_OF (int*) ;
 int CMD_HOTACK ;
 int CMD_HW_TEST ;
 int I2_BRK ;
 int I2_CTS ;
 int I2_DCD ;
 int I2_DCTS ;
 int I2_DDCD ;
 int I2_DDSR ;
 int I2_DRI ;
 int I2_DSR ;
 int I2_FRA ;
 scalar_t__ I2_HAS_INPUT (TYPE_4__*) ;
 int I2_OVR ;
 int I2_PAR ;
 int I2_RI ;
 unsigned int IBUF_SIZE ;
 int ID_HOT_KEY ;
 int ID_OF (int*) ;
 int ITRC_DRAIN ;
 int ITRC_MODEM ;
 int ITRC_NO_PORT ;
 int ITRC_RETURN ;
 int ITRC_SFIFO ;
 int ITRC_STFLW ;
 int MB_IN_STRIPPED ;
 int NEED_CREDIT ;
 int NEED_INLINE ;
 int PTYPE_BYPASS ;

 int PTYPE_INLINE ;
 int PTYPE_OF (int*) ;
 unsigned char STAT_E_FRAMING ;
 unsigned char STAT_E_OVERRUN ;
 unsigned char STAT_E_PARITY ;



 unsigned char STAT_MOD_ERROR ;





 unsigned char* cmdBuffer ;
 int do_input (int *) ;
 int do_status (int *) ;
 int i2QueueCommands (int ,TYPE_5__*,int ,int,int ) ;
 int i2QueueNeeds (TYPE_4__*,TYPE_5__*,int ) ;
 int iiReadBuf (TYPE_4__*,unsigned char*,int) ;
 int iiReadWord (TYPE_4__*) ;
 int ip2_owake (int ) ;
 int ip2trace (int,int ,int,int,...) ;
 unsigned char* junkBuffer ;
 int schedule_work (int *) ;
 int set_baud_params (TYPE_4__*) ;
 int wake_up_interruptible (int *) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;
 int* xlatDss ;

__attribute__((used)) static inline void
i2StripFifo(i2eBordStrPtr pB)
{
 i2ChanStrPtr pCh;
 int channel;
 int count;
 unsigned short stuffIndex;
 int amountToRead;
 unsigned char *pc, *pcLimit;
 unsigned char uc;
 unsigned char dss_change;
 unsigned long bflags,cflags;



 while (I2_HAS_INPUT(pB)) {



  write_lock_irqsave(&pB->read_fifo_spinlock, bflags);



  pB->i2eLeadoffWord[0] = iiReadWord(pB);

  switch(PTYPE_OF(pB->i2eLeadoffWord))
  {
  case 147:
   pB->got_input = 1;



   channel = CHANNEL_OF(pB->i2eLeadoffWord);
   count = iiReadWord(pB);





   if ( ((unsigned int)count) > IBUF_SIZE ) {
    pB->i2eFatal = 2;
    write_unlock_irqrestore(&pB->read_fifo_spinlock,
      bflags);
    return;
   }

   if ((channel >= pB->i2eChannelCnt) ||
    (((void*)0)==(pCh = ((i2ChanStrPtr*)pB->i2eChannelPtr)[channel])))
   {
    iiReadBuf(pB, junkBuffer, count);
    write_unlock_irqrestore(&pB->read_fifo_spinlock,
      bflags);
    break;
   }
   if(ID_OF(pB->i2eLeadoffWord) == ID_HOT_KEY)
   {
    pCh->hotKeyIn = iiReadWord(pB) & 0xff;
    write_unlock_irqrestore(&pB->read_fifo_spinlock,
      bflags);
    i2QueueCommands(PTYPE_BYPASS, pCh, 0, 1, CMD_HOTACK);
    break;
   }



   write_lock_irqsave(&pCh->Ibuf_spinlock, cflags);

   stuffIndex = pCh->Ibuf_stuff;
   amountToRead = IBUF_SIZE - stuffIndex;
   if (amountToRead > count)
    amountToRead = count;





   iiReadBuf(pB, &(pCh->Ibuf[stuffIndex]), amountToRead);
   pCh->icount.rx += amountToRead;
   stuffIndex += amountToRead;

   if (stuffIndex >= IBUF_SIZE) {
    if ((amountToRead & 1) && (count > amountToRead)) {
     pCh->Ibuf[0] = pCh->Ibuf[IBUF_SIZE];
     amountToRead++;
     stuffIndex = 1;
    } else {
     stuffIndex = 0;
    }
   }


   if (count > amountToRead) {
    amountToRead = count - amountToRead;
    iiReadBuf(pB, &(pCh->Ibuf[stuffIndex]), amountToRead);
    pCh->icount.rx += amountToRead;
    stuffIndex += amountToRead;
   }


   pCh->Ibuf_stuff = stuffIndex;
   write_unlock_irqrestore(&pCh->Ibuf_spinlock, cflags);
   write_unlock_irqrestore(&pB->read_fifo_spinlock,
     bflags);




   do_input(&pCh->tqueue_input);







   break;

  case 146:
   ip2trace (ITRC_NO_PORT, ITRC_SFIFO, 4, 0 );

   count = CMD_COUNT_OF(pB->i2eLeadoffWord);

   iiReadBuf(pB, cmdBuffer, count);

   write_unlock_irqrestore(&pB->read_fifo_spinlock,
     bflags);

   pc = cmdBuffer;
   pcLimit = &(cmdBuffer[count]);

   while (pc < pcLimit) {
    channel = *pc++;

    ip2trace (channel, ITRC_SFIFO, 7, 2, channel, *pc );


    if (channel < pB->i2eChannelCnt
      &&
      (pCh = (((i2ChanStrPtr*)pB->i2eChannelPtr)[channel])) != ((void*)0)
     )
    {
     dss_change = 0;

     switch (uc = *pc++)
     {

     case 141:
      if ( !(pCh->dataSetIn & I2_CTS) )
      {
       pCh->dataSetIn |= I2_DCTS;
       pCh->icount.cts++;
       dss_change = 1;
      }
      pCh->dataSetIn |= I2_CTS;
      break;

     case 142:
      if ( pCh->dataSetIn & I2_CTS )
      {
       pCh->dataSetIn |= I2_DCTS;
       pCh->icount.cts++;
       dss_change = 1;
      }
      pCh->dataSetIn &= ~I2_CTS;
      break;

     case 139:
      ip2trace (channel, ITRC_MODEM, 1, 1, pCh->dataSetIn );

      if ( !(pCh->dataSetIn & I2_DCD) )
      {
       ip2trace (CHANN, ITRC_MODEM, 2, 0 );
       pCh->dataSetIn |= I2_DDCD;
       pCh->icount.dcd++;
       dss_change = 1;
      }
      pCh->dataSetIn |= I2_DCD;

      ip2trace (channel, ITRC_MODEM, 3, 1, pCh->dataSetIn );
      break;

     case 140:
      ip2trace (channel, ITRC_MODEM, 4, 1, pCh->dataSetIn );
      if ( pCh->dataSetIn & I2_DCD )
      {
       ip2trace (channel, ITRC_MODEM, 5, 0 );
       pCh->dataSetIn |= I2_DDCD;
       pCh->icount.dcd++;
       dss_change = 1;
      }
      pCh->dataSetIn &= ~I2_DCD;

      ip2trace (channel, ITRC_MODEM, 6, 1, pCh->dataSetIn );
      break;

     case 137:
      if ( !(pCh->dataSetIn & I2_DSR) )
      {
       pCh->dataSetIn |= I2_DDSR;
       pCh->icount.dsr++;
       dss_change = 1;
      }
      pCh->dataSetIn |= I2_DSR;
      break;

     case 138:
      if ( pCh->dataSetIn & I2_DSR )
      {
       pCh->dataSetIn |= I2_DDSR;
       pCh->icount.dsr++;
       dss_change = 1;
      }
      pCh->dataSetIn &= ~I2_DSR;
      break;

     case 131:
      if ( !(pCh->dataSetIn & I2_RI) )
      {
       pCh->dataSetIn |= I2_DRI;
       pCh->icount.rng++;
       dss_change = 1;
      }
      pCh->dataSetIn |= I2_RI ;
      break;

     case 132:







      pCh->dataSetIn &= ~I2_RI ;
      break;

     case 143:
      pCh->dataSetIn |= I2_BRK;
      pCh->icount.brk++;
      dss_change = 1;
      break;


     case 145:
      pCh->bookMarks--;
      if (pCh->bookMarks <= 0 ) {
       pCh->bookMarks = 0;
       wake_up_interruptible( &pCh->pBookmarkWait );

      ip2trace (channel, ITRC_DRAIN, 20, 1, pCh->BookmarkTimer.expires );
      }
      break;



     case 135:
      pCh->outfl.room =
       ((flowStatPtr)pc)->room -
       (pCh->outfl.asof - ((flowStatPtr)pc)->asof);

      ip2trace (channel, ITRC_STFLW, 1, 1, pCh->outfl.room );

      if (pCh->channelNeeds & NEED_CREDIT)
      {
       ip2trace (channel, ITRC_STFLW, 2, 1, pCh->channelNeeds);

       pCh->channelNeeds &= ~NEED_CREDIT;
       i2QueueNeeds(pB, pCh, NEED_INLINE);
       if ( pCh->pTTY )
        ip2_owake(pCh->pTTY);
      }

      ip2trace (channel, ITRC_STFLW, 3, 1, pCh->channelNeeds);

      pc += sizeof(flowStat);
      break;




     case 129:

      pCh->channelStatus = *((debugStatPtr)pc);
      pc += sizeof(debugStat);
      break;

     case 128:

      pCh->channelTcount = *((cntStatPtr)pc);
      pc += sizeof(cntStat);
      break;

     case 130:

      pCh->channelRcount = *((cntStatPtr)pc);
      pc += sizeof(cntStat);
      break;

     case 144:
      pB->channelBtypes = *((bidStatPtr)pc);
      pc += sizeof(bidStat);
      set_baud_params(pB);
      break;

     case 134:
      i2QueueCommands (PTYPE_INLINE, pCh, 0, 1, CMD_HW_TEST);
      pCh->channelFail = *((failStatPtr)pc);
      pc += sizeof(failStat);
      break;




     default:
      switch (uc & STAT_MOD_ERROR)
      {
      case 136:
       if (uc & STAT_E_PARITY) {
        pCh->dataSetIn |= I2_PAR;
        pCh->icount.parity++;
       }
       if (uc & STAT_E_FRAMING){
        pCh->dataSetIn |= I2_FRA;
        pCh->icount.frame++;
       }
       if (uc & STAT_E_OVERRUN){
        pCh->dataSetIn |= I2_OVR;
        pCh->icount.overrun++;
       }
       break;

      case 133:

       pCh->dataSetIn = (pCh->dataSetIn
        & ~(I2_RI | I2_CTS | I2_DCD | I2_DSR) )
        | xlatDss[uc & 0xf];
       wake_up_interruptible ( &pCh->dss_now_wait );
      default:
       break;
      }
     }
     if (dss_change) {



      do_status(&pCh->tqueue_status);

     }
    }
    else
    {



     switch (*pc++)
     {
     case 135:
      pc += 4;
      break;

     default:
      break;
     }
    }
   }
   break;

  default:
   ip2trace (ITRC_NO_PORT, ITRC_SFIFO, 5, 1,
    PTYPE_OF(pB->i2eLeadoffWord) );
   write_unlock_irqrestore(&pB->read_fifo_spinlock,
     bflags);

   break;
  }
 }

 ip2trace (ITRC_NO_PORT, ITRC_SFIFO, ITRC_RETURN, 0 );


 pB->i2eOutMailWaiting |= MB_IN_STRIPPED;
 return;
}
