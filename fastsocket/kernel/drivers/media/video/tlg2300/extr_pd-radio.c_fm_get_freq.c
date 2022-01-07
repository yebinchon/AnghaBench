
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_frequency {int frequency; } ;
struct TYPE_2__ {int fm_freq; } ;
struct poseidon {TYPE_1__ radio_data; } ;
struct file {struct poseidon* private_data; } ;



__attribute__((used)) static int fm_get_freq(struct file *file, void *priv,
         struct v4l2_frequency *argp)
{
 struct poseidon *p = file->private_data;

 argp->frequency = p->radio_data.fm_freq;
 return 0;
}
