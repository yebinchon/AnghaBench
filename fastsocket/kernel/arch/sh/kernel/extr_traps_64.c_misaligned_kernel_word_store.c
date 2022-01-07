
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __u64 ;
typedef unsigned short __u16 ;



__attribute__((used)) static void misaligned_kernel_word_store(__u64 address, __u64 value)
{
 unsigned short x;
 unsigned char *p, *q;
 p = (unsigned char *) (int) address;
 q = (unsigned char *) &x;

 x = (__u16) value;
 p[0] = q[0];
 p[1] = q[1];
}
