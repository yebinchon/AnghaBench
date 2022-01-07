
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int * eeprom; } ;



__attribute__((used)) static inline void *rt2x00_eeprom_addr(struct rt2x00_dev *rt2x00dev,
           const unsigned int word)
{
 return (void *)&rt2x00dev->eeprom[word];
}
