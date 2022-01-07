
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rt2x00_dev {int * eeprom; } ;


 int le16_to_cpu (int ) ;

__attribute__((used)) static inline void rt2x00_eeprom_read(struct rt2x00_dev *rt2x00dev,
          const unsigned int word, u16 *data)
{
 *data = le16_to_cpu(rt2x00dev->eeprom[word]);
}
