
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pcap_chip {int adc_mutex; } ;


 int PCAP_ADC_TS_M_MASK ;
 int PCAP_ADC_TS_REF_LOWPWR ;
 int PCAP_REG_ADC ;
 int ezx_pcap_read (struct pcap_chip*,int ,int*) ;
 int ezx_pcap_write (struct pcap_chip*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void pcap_set_ts_bits(struct pcap_chip *pcap, u32 bits)
{
 u32 tmp;

 mutex_lock(&pcap->adc_mutex);
 ezx_pcap_read(pcap, PCAP_REG_ADC, &tmp);
 tmp &= ~(PCAP_ADC_TS_M_MASK | PCAP_ADC_TS_REF_LOWPWR);
 tmp |= bits & (PCAP_ADC_TS_M_MASK | PCAP_ADC_TS_REF_LOWPWR);
 ezx_pcap_write(pcap, PCAP_REG_ADC, tmp);
 mutex_unlock(&pcap->adc_mutex);
}
