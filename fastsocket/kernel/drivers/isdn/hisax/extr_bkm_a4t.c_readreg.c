
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u_int ;
typedef unsigned char u_char ;


 unsigned char GCS_2 ;
 unsigned int PO_READ ;
 unsigned char PO_WRITE ;
 int __WAITI20__ (unsigned int*) ;

__attribute__((used)) static inline u_char
readreg(unsigned int ale, unsigned long adr, u_char off)
{
 register u_int ret;
 unsigned int *po = (unsigned int *) adr;

 *po = (GCS_2 | PO_WRITE | off);
 __WAITI20__(po);
 *po = (ale | PO_READ);
 __WAITI20__(po);
 ret = *po;
 return ((unsigned char) ret);
}
