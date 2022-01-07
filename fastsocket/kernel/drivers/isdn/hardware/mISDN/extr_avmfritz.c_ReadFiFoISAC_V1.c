
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fritzcard {scalar_t__ addr; } ;


 int AVM_ISAC_FIFO ;
 scalar_t__ CHIP_INDEX ;
 scalar_t__ CHIP_WINDOW ;
 int insb (scalar_t__,int *,int) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static void
ReadFiFoISAC_V1(void *p, u8 off, u8 *data, int size)
{
 struct fritzcard *fc = p;

 outb(AVM_ISAC_FIFO, fc->addr + CHIP_INDEX);
 insb(fc->addr + CHIP_WINDOW, data, size);
}
