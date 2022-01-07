
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DSP_MsaAddrHigh ;
 int DSP_MsaAddrLow ;
 int DSP_MsaDataDSISHigh ;
 unsigned short InWordDsp (int ) ;
 int OutWordDsp (int ,unsigned short) ;
 int PRINTK_2 (int ,char*,unsigned short) ;
 int PRINTK_3 (int ,char*,unsigned short,unsigned long) ;
 int TRACE_3780I ;
 int dsp_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

unsigned short dsp3780I_ReadMsaCfg(unsigned short usDspBaseIO,
                                   unsigned long ulMsaAddr)
{
 unsigned long flags;
 unsigned short val;

 PRINTK_3(TRACE_3780I,
  "3780i::dsp3780I_ReadMsaCfg entry usDspBaseIO %x ulMsaAddr %lx\n",
  usDspBaseIO, ulMsaAddr);

 spin_lock_irqsave(&dsp_lock, flags);
 OutWordDsp(DSP_MsaAddrLow, (unsigned short) ulMsaAddr);
 OutWordDsp(DSP_MsaAddrHigh, (unsigned short) (ulMsaAddr >> 16));
 val = InWordDsp(DSP_MsaDataDSISHigh);
 spin_unlock_irqrestore(&dsp_lock, flags);

 PRINTK_2(TRACE_3780I, "3780i::dsp3780I_ReadMsaCfg exit val %x\n", val);

 return val;
}
