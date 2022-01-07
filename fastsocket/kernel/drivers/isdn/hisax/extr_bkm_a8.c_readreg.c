
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int wordin (unsigned int) ;
 int wordout (unsigned int,int) ;

__attribute__((used)) static inline u_char
readreg(unsigned int ale, unsigned int adr, u_char off)
{
 register u_char ret;
 wordout(ale, off);
 ret = wordin(adr) & 0xFF;
 return (ret);
}
