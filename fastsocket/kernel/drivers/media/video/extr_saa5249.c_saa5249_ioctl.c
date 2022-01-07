
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa5249_device {int lock; } ;
struct file {int dummy; } ;


 int do_saa5249_ioctl ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct saa5249_device* video_drvdata (struct file*) ;
 long video_usercopy (struct file*,unsigned int,unsigned long,int ) ;
 unsigned int vtx_fix_command (unsigned int) ;

__attribute__((used)) static long saa5249_ioctl(struct file *file,
    unsigned int cmd, unsigned long arg)
{
 struct saa5249_device *t = video_drvdata(file);
 long err;

 cmd = vtx_fix_command(cmd);
 mutex_lock(&t->lock);
 err = video_usercopy(file, cmd, arg, do_saa5249_ioctl);
 mutex_unlock(&t->lock);
 return err;
}
