
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct csrow_info {TYPE_1__* channels; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* label; } ;


 int EDAC_MC_LABEL_LEN ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t channel_dimm_label_show(struct csrow_info *csrow,
    char *data, int channel)
{

 if (!csrow->channels[channel].label[0])
  return 0;

 return snprintf(data, EDAC_MC_LABEL_LEN, "%s\n",
   csrow->channels[channel].label);
}
