
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int frequency; } ;
struct poseidon {int pm_resume; int pm_suspend; struct file* file_for_stream; } ;
struct file {struct poseidon* private_data; } ;


 int pm_fm_resume ;
 int pm_fm_suspend ;
 int set_frequency (struct poseidon*,int ) ;

__attribute__((used)) static int fm_set_freq(struct file *file, void *priv,
         struct v4l2_frequency *argp)
{
 struct poseidon *p = file->private_data;

 p->file_for_stream = file;




 return set_frequency(p, argp->frequency);
}
