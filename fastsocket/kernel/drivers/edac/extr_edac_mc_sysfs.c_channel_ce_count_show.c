
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct csrow_info {TYPE_1__* channels; } ;
typedef int ssize_t ;
struct TYPE_2__ {int ce_count; } ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t channel_ce_count_show(struct csrow_info *csrow,
    char *data, int channel)
{
 return sprintf(data, "%u\n", csrow->channels[channel].ce_count);
}
