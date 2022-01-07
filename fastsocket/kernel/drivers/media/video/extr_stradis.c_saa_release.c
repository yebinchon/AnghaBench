
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146 {scalar_t__ user; } ;
struct file {struct saa7146* private_data; } ;


 int SAA7146_MC1 ;
 int saawrite (int,int ) ;

__attribute__((used)) static int saa_release(struct file *file)
{
 struct saa7146 *saa = file->private_data;
 saa->user--;

 if (saa->user > 0)
  return 0;
 saawrite(0x007f0000, SAA7146_MC1);
 return 0;
}
