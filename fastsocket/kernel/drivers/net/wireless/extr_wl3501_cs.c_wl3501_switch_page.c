
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wl3501_card {scalar_t__ base_addr; } ;


 scalar_t__ WL3501_NIC_BSS ;
 int wl3501_outb (int ,scalar_t__) ;

__attribute__((used)) static inline void wl3501_switch_page(struct wl3501_card *this, u8 page)
{
 wl3501_outb(page, this->base_addr + WL3501_NIC_BSS);
}
