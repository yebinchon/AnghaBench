
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef int __le16 ;


 int le16_to_cpu (int ) ;

__attribute__((used)) static u16 tx_get_next_word(const u8 *txhdr,
       const u8 *packet,
       size_t txhdr_size,
       unsigned int *pos)
{
 const u8 *source;
 unsigned int i = *pos;
 u16 ret;

 if (i < txhdr_size)
  source = txhdr;
 else {
  source = packet;
  i -= txhdr_size;
 }
 ret = le16_to_cpu(*((__le16 *)(source + i)));
 *pos += 2;

 return ret;
}
