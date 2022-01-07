
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* i2eBordStrPtr ;
typedef TYPE_3__* i2ChanStrPtr ;
struct TYPE_7__ {int BaudBase; int BaudDivisor; } ;
struct TYPE_5__ {scalar_t__* bid_value; } ;
struct TYPE_6__ {TYPE_1__ channelBtypes; scalar_t__ i2eChannelPtr; } ;


 int ABS_BIGGEST_BOX ;
 int ABS_MAX_BOXES ;
 scalar_t__ BID_HAS_654 (scalar_t__) ;

__attribute__((used)) static inline void
set_baud_params(i2eBordStrPtr pB)
{
 int i,j;
 i2ChanStrPtr *pCh;

 pCh = (i2ChanStrPtr *) pB->i2eChannelPtr;

 for (i = 0; i < ABS_MAX_BOXES; i++) {
  if (pB->channelBtypes.bid_value[i]) {
   if (BID_HAS_654(pB->channelBtypes.bid_value[i])) {
    for (j = 0; j < ABS_BIGGEST_BOX; j++) {
     if (pCh[i*16+j] == ((void*)0))
      break;
     (pCh[i*16+j])->BaudBase = 921600;
     (pCh[i*16+j])->BaudDivisor = 96;
    }
   } else {
    for (j = 0; j < ABS_BIGGEST_BOX; j++) {
     if (pCh[i*16+j] == ((void*)0))
      break;
     (pCh[i*16+j])->BaudBase = 115200;
     (pCh[i*16+j])->BaudDivisor = 12;
    }
   }
  }
 }
}
