
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline int lm8323_ispress(u8 event)
{
 return (event & 0x80) ? 1 : 0;
}
