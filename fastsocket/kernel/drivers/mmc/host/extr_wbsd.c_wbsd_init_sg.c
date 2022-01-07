
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wbsd_host {TYPE_1__* cur_sg; int remain; scalar_t__ offset; int num_sg; } ;
struct mmc_data {int sg_len; TYPE_1__* sg; } ;
struct TYPE_2__ {int length; } ;



__attribute__((used)) static inline void wbsd_init_sg(struct wbsd_host *host, struct mmc_data *data)
{



 host->cur_sg = data->sg;
 host->num_sg = data->sg_len;

 host->offset = 0;
 host->remain = host->cur_sg->length;
}
