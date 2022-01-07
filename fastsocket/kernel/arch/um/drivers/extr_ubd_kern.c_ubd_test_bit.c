
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int data ;
typedef int __u64 ;



__attribute__((used)) static inline int ubd_test_bit(__u64 bit, unsigned char *data)
{
 __u64 n;
 int bits, off;

 bits = sizeof(data[0]) * 8;
 n = bit / bits;
 off = bit % bits;
 return (data[n] & (1 << off)) != 0;
}
