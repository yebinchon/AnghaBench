
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmci_host {int sg_len; scalar_t__ sg_off; int sg_ptr; } ;



__attribute__((used)) static inline int mmci_next_sg(struct mmci_host *host)
{
 host->sg_ptr++;
 host->sg_off = 0;
 return --host->sg_len;
}
