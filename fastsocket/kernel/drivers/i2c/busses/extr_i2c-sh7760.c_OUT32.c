
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cami2c {scalar_t__ iobase; } ;


 int ctrl_outl (unsigned long,unsigned long) ;

__attribute__((used)) static inline void OUT32(struct cami2c *cam, int reg, unsigned long val)
{
 ctrl_outl(val, (unsigned long)cam->iobase + reg);
}
