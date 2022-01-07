
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ethoc {scalar_t__ iobase; } ;
typedef scalar_t__ loff_t ;


 int ioread32 (scalar_t__) ;

__attribute__((used)) static inline u32 ethoc_read(struct ethoc *dev, loff_t offset)
{
 return ioread32(dev->iobase + offset);
}
