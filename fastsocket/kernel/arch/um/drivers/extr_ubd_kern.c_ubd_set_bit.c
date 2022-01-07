
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int data ;
typedef int __u64 ;



__attribute__((used)) static inline void ubd_set_bit(__u64 bit, unsigned char *data)
{
 __u64 n;
 int bits, off;

 bits = sizeof(data[0]) * 8;
 n = bit / bits;
 off = bit % bits;
 data[n] |= (1 << off);
}
