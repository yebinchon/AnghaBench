
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cami2c {scalar_t__ iobase; } ;


 unsigned long ctrl_inl (unsigned long) ;

__attribute__((used)) static inline unsigned long IN32(struct cami2c *cam, int reg)
{
 return ctrl_inl((unsigned long)cam->iobase + reg);
}
