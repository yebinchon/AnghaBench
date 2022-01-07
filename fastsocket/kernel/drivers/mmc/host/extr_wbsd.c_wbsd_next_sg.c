
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wbsd_host {scalar_t__ num_sg; TYPE_1__* cur_sg; int remain; scalar_t__ offset; } ;
struct TYPE_2__ {int length; } ;



__attribute__((used)) static inline int wbsd_next_sg(struct wbsd_host *host)
{



 host->cur_sg++;
 host->num_sg--;




 if (host->num_sg > 0) {
  host->offset = 0;
  host->remain = host->cur_sg->length;
 }

 return host->num_sg;
}
