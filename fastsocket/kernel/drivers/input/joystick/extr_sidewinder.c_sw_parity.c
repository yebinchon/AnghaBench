
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u64 ;



__attribute__((used)) static int sw_parity(__u64 t)
{
 int x = t ^ (t >> 32);

 x ^= x >> 16;
 x ^= x >> 8;
 x ^= x >> 4;
 x ^= x >> 2;
 x ^= x >> 1;
 return x & 1;
}
