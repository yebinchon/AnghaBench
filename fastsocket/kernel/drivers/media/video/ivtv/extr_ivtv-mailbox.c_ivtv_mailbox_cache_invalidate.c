
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ivtv {TYPE_1__* api_cache; } ;
struct TYPE_2__ {scalar_t__ last_jiffies; } ;



void ivtv_mailbox_cache_invalidate(struct ivtv *itv)
{
 int i;
 for (i = 0; i < 256; i++)
  itv->api_cache[i].last_jiffies = 0;
}
