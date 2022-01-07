
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DSP_MsaAddrHigh ;
 int DSP_MsaAddrLow ;
 int DSP_MsaDataDSISHigh ;
 int OutWordDsp (int ,unsigned short) ;
 int PRINTK_4 (int ,char*,unsigned short,unsigned long,unsigned short) ;
 int TRACE_3780I ;
 int dsp_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void dsp3780I_WriteMsaCfg(unsigned short usDspBaseIO,
                          unsigned long ulMsaAddr, unsigned short usValue)
{
 unsigned long flags;

 PRINTK_4(TRACE_3780I,
  "3780i::dsp3780i_WriteMsaCfg entry usDspBaseIO %x ulMsaAddr %lx usValue %x\n",
  usDspBaseIO, ulMsaAddr, usValue);

 spin_lock_irqsave(&dsp_lock, flags);
 OutWordDsp(DSP_MsaAddrLow, (unsigned short) ulMsaAddr);
 OutWordDsp(DSP_MsaAddrHigh, (unsigned short) (ulMsaAddr >> 16));
 OutWordDsp(DSP_MsaDataDSISHigh, usValue);
 spin_unlock_irqrestore(&dsp_lock, flags);
}
