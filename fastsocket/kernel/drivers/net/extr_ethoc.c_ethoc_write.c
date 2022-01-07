
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ethoc {scalar_t__ iobase; } ;
typedef scalar_t__ loff_t ;


 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static inline void ethoc_write(struct ethoc *dev, loff_t offset, u32 data)
{
 iowrite32(data, dev->iobase + offset);
}
