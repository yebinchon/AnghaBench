
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct cmac_statistics {int dummy; } ;
struct cmac {struct cmac_statistics const stats; } ;


 int RMON_UPDATE (struct cmac*,int ,int ) ;
 int RxBroadcastFramesOK ;
 int RxBroadcastFramesReceivedOK ;
 int RxFCSErrors ;
 int RxFragments ;
 int RxFrameCheckSequenceErrors ;
 int RxFrameTooLongErrors ;
 int RxFramesLostDueToInternalMACErrors ;
 int RxFramesTooLongErrors ;
 int RxInRangeLengthErrors ;
 int RxInternalMACRcvError ;
 int RxJabberErrors ;
 int RxJabbers ;
 int RxJumboFramesOK ;
 int RxJumboFramesReceivedOK ;
 int RxJumboOctetsOK ;
 int RxJumboOctetsReceivedOK ;
 int RxMulticastFramesOK ;
 int RxMulticastFramesReceivedOK ;
 int RxOctetsOK ;
 int RxOctetsReceivedOK ;
 int RxPAUSEMACCtrlFramesReceived ;
 int RxPauseFrames ;
 int RxRuntErrors ;
 int RxSymbolErrors ;
 int RxUndersizedFrames ;
 int RxUnicastFramesOK ;
 int RxUnicastFramesReceivedOK ;
 int SUNI1x10GEXP_BITMSK_MSTAT_SNAP ;
 int SUNI1x10GEXP_REG_MSTAT_CONTROL ;
 int SUNI1x10GEXP_REG_MSTAT_COUNTER_ROLLOVER_0 ;
 int SUNI1x10GEXP_REG_MSTAT_COUNTER_ROLLOVER_1 ;
 int SUNI1x10GEXP_REG_MSTAT_COUNTER_ROLLOVER_2 ;
 int SUNI1x10GEXP_REG_MSTAT_COUNTER_ROLLOVER_3 ;
 int TxBroadcastFramesOK ;
 int TxBroadcastFramesTransmittedOK ;
 int TxFCSErrors ;
 int TxFramesLostDueToInternalMACTransmissionError ;
 int TxInternalMACXmitError ;
 int TxJumboFramesOK ;
 int TxJumboFramesReceivedOK ;
 int TxJumboOctetsOK ;
 int TxJumboOctetsReceivedOK ;
 int TxMulticastFramesOK ;
 int TxMulticastFramesTransmittedOK ;
 int TxOctetsOK ;
 int TxOctetsTransmittedOK ;
 int TxPAUSEMACCtrlFramesTransmitted ;
 int TxPauseFrames ;
 int TxTransmitSystemError ;
 int TxUnicastFramesOK ;
 int TxUnicastFramesTransmittedOK ;
 int pmread (struct cmac*,int ,scalar_t__*) ;
 int pmwrite (struct cmac*,int ,int ) ;

__attribute__((used)) static const struct cmac_statistics *pm3393_update_statistics(struct cmac *mac,
             int flag)
{
 u64 ro;
 u32 val0, val1, val2, val3;


 pmwrite(mac, SUNI1x10GEXP_REG_MSTAT_CONTROL,
  SUNI1x10GEXP_BITMSK_MSTAT_SNAP);


 pmread(mac, SUNI1x10GEXP_REG_MSTAT_COUNTER_ROLLOVER_0, &val0);
 pmread(mac, SUNI1x10GEXP_REG_MSTAT_COUNTER_ROLLOVER_1, &val1);
 pmread(mac, SUNI1x10GEXP_REG_MSTAT_COUNTER_ROLLOVER_2, &val2);
 pmread(mac, SUNI1x10GEXP_REG_MSTAT_COUNTER_ROLLOVER_3, &val3);
 ro = ((u64)val0 & 0xffff) | (((u64)val1 & 0xffff) << 16) |
  (((u64)val2 & 0xffff) << 32) | (((u64)val3 & 0xffff) << 48);


 RMON_UPDATE(mac, RxOctetsReceivedOK, RxOctetsOK);
 RMON_UPDATE(mac, RxUnicastFramesReceivedOK, RxUnicastFramesOK);
 RMON_UPDATE(mac, RxMulticastFramesReceivedOK, RxMulticastFramesOK);
 RMON_UPDATE(mac, RxBroadcastFramesReceivedOK, RxBroadcastFramesOK);
 RMON_UPDATE(mac, RxPAUSEMACCtrlFramesReceived, RxPauseFrames);
 RMON_UPDATE(mac, RxFrameCheckSequenceErrors, RxFCSErrors);
 RMON_UPDATE(mac, RxFramesLostDueToInternalMACErrors,
    RxInternalMACRcvError);
 RMON_UPDATE(mac, RxSymbolErrors, RxSymbolErrors);
 RMON_UPDATE(mac, RxInRangeLengthErrors, RxInRangeLengthErrors);
 RMON_UPDATE(mac, RxFramesTooLongErrors , RxFrameTooLongErrors);
 RMON_UPDATE(mac, RxJabbers, RxJabberErrors);
 RMON_UPDATE(mac, RxFragments, RxRuntErrors);
 RMON_UPDATE(mac, RxUndersizedFrames, RxRuntErrors);
 RMON_UPDATE(mac, RxJumboFramesReceivedOK, RxJumboFramesOK);
 RMON_UPDATE(mac, RxJumboOctetsReceivedOK, RxJumboOctetsOK);


 RMON_UPDATE(mac, TxOctetsTransmittedOK, TxOctetsOK);
 RMON_UPDATE(mac, TxFramesLostDueToInternalMACTransmissionError,
    TxInternalMACXmitError);
 RMON_UPDATE(mac, TxTransmitSystemError, TxFCSErrors);
 RMON_UPDATE(mac, TxUnicastFramesTransmittedOK, TxUnicastFramesOK);
 RMON_UPDATE(mac, TxMulticastFramesTransmittedOK, TxMulticastFramesOK);
 RMON_UPDATE(mac, TxBroadcastFramesTransmittedOK, TxBroadcastFramesOK);
 RMON_UPDATE(mac, TxPAUSEMACCtrlFramesTransmitted, TxPauseFrames);
 RMON_UPDATE(mac, TxJumboFramesReceivedOK, TxJumboFramesOK);
 RMON_UPDATE(mac, TxJumboOctetsReceivedOK, TxJumboOctetsOK);

 return &mac->stats;
}
