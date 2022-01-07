
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __wsum ;



__attribute__((used)) static inline unsigned short from32to16(__wsum sum)
{
 asm("	add	%1,%0		\n"
     "	addc	0xffff,%0	\n"
     : "=r" (sum)
     : "r" (sum << 16), "0" (sum & 0xffff0000)
     );
 return sum >> 16;
}
