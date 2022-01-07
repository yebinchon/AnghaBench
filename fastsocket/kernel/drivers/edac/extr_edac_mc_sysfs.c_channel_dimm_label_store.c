
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct csrow_info {TYPE_1__* channels; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {char* label; } ;


 scalar_t__ EDAC_MC_LABEL_LEN ;
 size_t min (size_t,size_t) ;
 int strncpy (char*,char const*,size_t) ;

__attribute__((used)) static ssize_t channel_dimm_label_store(struct csrow_info *csrow,
     const char *data,
     size_t count, int channel)
{
 ssize_t max_size = 0;

 max_size = min((ssize_t) count, (ssize_t) EDAC_MC_LABEL_LEN - 1);
 strncpy(csrow->channels[channel].label, data, max_size);
 csrow->channels[channel].label[max_size] = '\0';

 return max_size;
}
