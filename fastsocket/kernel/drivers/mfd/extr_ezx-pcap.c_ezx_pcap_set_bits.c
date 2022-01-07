
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pcap_chip {int io_mutex; } ;


 int PCAP_REGISTER_ADDRESS_SHIFT ;
 int PCAP_REGISTER_READ_OP_BIT ;
 int PCAP_REGISTER_VALUE_MASK ;
 int PCAP_REGISTER_WRITE_OP_BIT ;
 int ezx_pcap_putget (struct pcap_chip*,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ezx_pcap_set_bits(struct pcap_chip *pcap, u8 reg_num, u32 mask, u32 val)
{
 int ret;
 u32 tmp = PCAP_REGISTER_READ_OP_BIT |
  (reg_num << PCAP_REGISTER_ADDRESS_SHIFT);

 mutex_lock(&pcap->io_mutex);
 ret = ezx_pcap_putget(pcap, &tmp);
 if (ret)
  goto out_unlock;

 tmp &= (PCAP_REGISTER_VALUE_MASK & ~mask);
 tmp |= (val & mask) | PCAP_REGISTER_WRITE_OP_BIT |
  (reg_num << PCAP_REGISTER_ADDRESS_SHIFT);

 ret = ezx_pcap_putget(pcap, &tmp);
out_unlock:
 mutex_unlock(&pcap->io_mutex);

 return ret;
}
