
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u16 ;



__attribute__((used)) static inline int ext_hash(__u16 code)
{
 return (code + (code >> 9)) & 0xff;
}
