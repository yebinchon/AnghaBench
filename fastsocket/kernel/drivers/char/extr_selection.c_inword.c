
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int const* inwordLut ;

__attribute__((used)) static inline int inword(const u16 c) {
 return c > 0xff || (( inwordLut[c>>5] >> (c & 0x1F) ) & 1);
}
