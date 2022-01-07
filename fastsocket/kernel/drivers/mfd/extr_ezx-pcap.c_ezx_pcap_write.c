
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pcap_chip {int io_mutex; } ;


 int PCAP_REGISTER_ADDRESS_SHIFT ;
 int PCAP_REGISTER_VALUE_MASK ;
 int PCAP_REGISTER_WRITE_OP_BIT ;
 int ezx_pcap_putget (struct pcap_chip*,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ezx_pcap_write(struct pcap_chip *pcap, u8 reg_num, u32 value)
{
 int ret;

 mutex_lock(&pcap->io_mutex);
 value &= PCAP_REGISTER_VALUE_MASK;
 value |= PCAP_REGISTER_WRITE_OP_BIT
  | (reg_num << PCAP_REGISTER_ADDRESS_SHIFT);
 ret = ezx_pcap_putget(pcap, &value);
 mutex_unlock(&pcap->io_mutex);

 return ret;
}
