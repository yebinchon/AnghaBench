
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __le32 ;


 int cpu_to_le32 (int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static __le32 p54u_lm87_chksum(const __le32 *data, size_t length)
{
 u32 chk = 0;

 length >>= 2;
 while (length--) {
  chk ^= le32_to_cpu(*data++);
  chk = (chk >> 5) ^ (chk << 3);
 }

 return cpu_to_le32(chk);
}
