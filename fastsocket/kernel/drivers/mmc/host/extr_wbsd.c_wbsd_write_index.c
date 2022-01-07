
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wbsd_host {scalar_t__ base; } ;


 scalar_t__ WBSD_DATAR ;
 scalar_t__ WBSD_IDXR ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static inline void wbsd_write_index(struct wbsd_host *host, u8 index, u8 value)
{
 outb(index, host->base + WBSD_IDXR);
 outb(value, host->base + WBSD_DATAR);
}
