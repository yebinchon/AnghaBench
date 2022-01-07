
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wbsd_host {scalar_t__ config; } ;


 int BUG_ON (int) ;
 int inb (scalar_t__) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static inline u8 wbsd_read_config(struct wbsd_host *host, u8 reg)
{
 BUG_ON(host->config == 0);

 outb(reg, host->config);
 return inb(host->config + 1);
}
