
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ _iobase ;
 int iowrite32 (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void
_writefield(u32 offset, void *value)
{
 int i;
 for(i = 0; i < 4; i++)
  iowrite32(((u32 *) value)[i], _iobase + offset + (i * 4));
}
