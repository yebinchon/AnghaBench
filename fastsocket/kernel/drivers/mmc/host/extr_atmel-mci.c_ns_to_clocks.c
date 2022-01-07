
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_mci {int bus_hz; } ;



__attribute__((used)) static inline unsigned int ns_to_clocks(struct atmel_mci *host,
     unsigned int ns)
{
 return (ns * (host->bus_hz / 1000000) + 999) / 1000;
}
