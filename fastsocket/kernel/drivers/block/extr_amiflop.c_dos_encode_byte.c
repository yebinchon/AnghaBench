
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ushort ;


 unsigned char* mfmencode ;

__attribute__((used)) static inline ushort dos_encode_byte(unsigned char byte)
{
 register unsigned char *enc, b2, b1;
 register ushort word;

 enc=mfmencode;
 b1=byte;
 b2=b1>>4;
 b1&=15;
 word=enc[b2] <<8 | enc [b1];
 return (word|((word&(256|64)) ? 0: 128));
}
