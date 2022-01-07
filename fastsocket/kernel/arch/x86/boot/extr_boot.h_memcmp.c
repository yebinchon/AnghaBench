
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline int memcmp(const void *s1, const void *s2, size_t len)
{
 u8 diff;
 asm("repe; cmpsb; setnz %0"
     : "=qm" (diff), "+D" (s1), "+S" (s2), "+c" (len));
 return diff;
}
