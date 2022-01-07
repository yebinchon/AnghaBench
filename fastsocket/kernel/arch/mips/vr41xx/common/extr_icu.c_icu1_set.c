
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int icu1_read (int ) ;
 int icu1_write (int ,int ) ;

__attribute__((used)) static inline uint16_t icu1_set(uint8_t offset, uint16_t set)
{
 uint16_t data;

 data = icu1_read(offset);
 data |= set;
 icu1_write(offset, data);

 return data;
}
