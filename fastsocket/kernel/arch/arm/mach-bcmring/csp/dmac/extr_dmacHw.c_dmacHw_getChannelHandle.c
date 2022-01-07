
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dmacHw_ID_t ;
typedef int dmacHw_HANDLE_t ;


 int dmaChannelCount_0 ;
 int dmaChannelCount_1 ;
 int dmacHw_ASSERT (int) ;
 int dmacHw_CBLK_TO_HANDLE (int *) ;
 int * dmacHw_gCblk ;

dmacHw_HANDLE_t dmacHw_getChannelHandle(dmacHw_ID_t channelId
    ) {
 int idx;

 switch ((channelId >> 8)) {
 case 0:
  dmacHw_ASSERT((channelId & 0xff) < dmaChannelCount_0);
  idx = (channelId & 0xff);
  break;
 case 1:
  dmacHw_ASSERT((channelId & 0xff) < dmaChannelCount_1);
  idx = dmaChannelCount_0 + (channelId & 0xff);
  break;
 default:
  dmacHw_ASSERT(0);
  return (dmacHw_HANDLE_t) -1;
 }

 return dmacHw_CBLK_TO_HANDLE(&dmacHw_gCblk[idx]);
}
