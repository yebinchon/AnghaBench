
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ushort ;
typedef unsigned char uchar ;
typedef int PortAddr ;


 unsigned short AscGetChipLramData (int ) ;
 int AscSetChipLramAddr (int ,scalar_t__) ;
 scalar_t__ isodd_word (scalar_t__) ;

__attribute__((used)) static uchar AscReadLramByte(PortAddr iop_base, ushort addr)
{
 unsigned char byte_data;
 unsigned short word_data;

 if (isodd_word(addr)) {
  AscSetChipLramAddr(iop_base, addr - 1);
  word_data = AscGetChipLramData(iop_base);
  byte_data = (word_data >> 8) & 0xFF;
 } else {
  AscSetChipLramAddr(iop_base, addr);
  word_data = AscGetChipLramData(iop_base);
  byte_data = word_data & 0xFF;
 }
 return byte_data;
}
