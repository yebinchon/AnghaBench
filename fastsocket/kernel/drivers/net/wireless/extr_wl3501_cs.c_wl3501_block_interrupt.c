
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wl3501_card {scalar_t__ base_addr; } ;


 int WL3501_GCR_ECINT ;
 int WL3501_GCR_ENECINT ;
 int WL3501_GCR_INT2EC ;
 scalar_t__ WL3501_NIC_GCR ;
 int inb (scalar_t__) ;
 int wl3501_outb (int,scalar_t__) ;

__attribute__((used)) static int wl3501_block_interrupt(struct wl3501_card *this)
{
 u8 old = inb(this->base_addr + WL3501_NIC_GCR);
 u8 new = old & (~(WL3501_GCR_ECINT | WL3501_GCR_INT2EC |
   WL3501_GCR_ENECINT));

 wl3501_outb(new, this->base_addr + WL3501_NIC_GCR);
 return old & WL3501_GCR_ENECINT;
}
