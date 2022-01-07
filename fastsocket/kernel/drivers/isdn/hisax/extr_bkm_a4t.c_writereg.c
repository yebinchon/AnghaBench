
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u_char ;


 unsigned int GCS_2 ;
 unsigned int PO_WRITE ;
 int __WAITI20__ (unsigned int*) ;

__attribute__((used)) static inline void
writereg(unsigned int ale, unsigned long adr, u_char off, u_char data)
{
 unsigned int *po = (unsigned int *) adr;
 *po = (GCS_2 | PO_WRITE | off);
 __WAITI20__(po);
 *po = (ale | PO_WRITE | data);
 __WAITI20__(po);
}
