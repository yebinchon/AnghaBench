
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEV ;
 int REG ;
 int VAL ;
 int outb (int,int ) ;

__attribute__((used)) static inline void
superio_select(int ld)
{
 outb(DEV, REG);
 outb(ld, VAL);
}
