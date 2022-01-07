
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* i2eBordStrPtr ;
struct TYPE_6__ {unsigned int i2eStartMail; int i2eFatal; int i2eFifoRemains; int write_fifo_spinlock; scalar_t__ i2eWaitingForEmptyFifo; int i2eFifoSize; int i2eFifoOutInts; int i2eFifoInInts; } ;


 int ITRC_INTR ;
 int ITRC_NO_PORT ;
 unsigned int MB_FATAL_ERROR ;
 unsigned int MB_IN_STUFFED ;
 unsigned int MB_OUT_STRIPPED ;
 unsigned int NO_MAIL_HERE ;
 int i2StripFifo (TYPE_1__*) ;
 unsigned int iiGetMail (TYPE_1__*) ;
 int ip2trace (int ,int ,int,int,...) ;
 int serviceOutgoingFifo (TYPE_1__*) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline int
i2ServiceBoard ( i2eBordStrPtr pB )
{
 unsigned inmail;
 unsigned long flags;



 if (NO_MAIL_HERE == ( inmail = pB->i2eStartMail ) ) {
  inmail = iiGetMail(pB);
 }
 pB->i2eStartMail = NO_MAIL_HERE;

 ip2trace (ITRC_NO_PORT, ITRC_INTR, 2, 1, inmail );

 if (inmail != NO_MAIL_HERE) {


  if ( inmail & MB_FATAL_ERROR ) {
   pB->i2eFatal = 1;
   goto exit_i2ServiceBoard;
  }


  if ( inmail & MB_IN_STUFFED ) {
   pB->i2eFifoInInts++;
   i2StripFifo(pB);
  }

  if (inmail & MB_OUT_STRIPPED) {
   pB->i2eFifoOutInts++;
   write_lock_irqsave(&pB->write_fifo_spinlock, flags);
   pB->i2eFifoRemains = pB->i2eFifoSize;
   pB->i2eWaitingForEmptyFifo = 0;
   write_unlock_irqrestore(&pB->write_fifo_spinlock,
     flags);

   ip2trace (ITRC_NO_PORT, ITRC_INTR, 30, 1, pB->i2eFifoRemains );

  }
  serviceOutgoingFifo(pB);
 }

 ip2trace (ITRC_NO_PORT, ITRC_INTR, 8, 0 );

exit_i2ServiceBoard:

 return 0;
}
