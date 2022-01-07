
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;



__attribute__((used)) static inline u_char
memreadreg(unsigned long adr, u_char off)
{
 return(*((unsigned char *)
  (((unsigned int *)adr) + off)));
}
