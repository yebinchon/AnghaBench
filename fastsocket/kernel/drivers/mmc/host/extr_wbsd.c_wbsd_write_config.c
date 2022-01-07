
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wbsd_host {scalar_t__ config; } ;


 int BUG_ON (int) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static inline void wbsd_write_config(struct wbsd_host *host, u8 reg, u8 value)
{
 BUG_ON(host->config == 0);

 outb(reg, host->config);
 outb(value, host->config + 1);
}
