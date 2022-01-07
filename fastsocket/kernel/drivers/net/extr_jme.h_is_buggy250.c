
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short PCI_DEVICE_ID_JMICRON_JMC250 ;

__attribute__((used)) static inline int is_buggy250(unsigned short device, unsigned int chiprev)
{
 return device == PCI_DEVICE_ID_JMICRON_JMC250 && chiprev == 0x11;
}
