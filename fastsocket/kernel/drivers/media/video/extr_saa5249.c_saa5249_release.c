
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa5249_device {int in_use; } ;
struct file {int dummy; } ;


 int clear_bit (int ,int *) ;
 int i2c_senddata (struct saa5249_device*,int,int,int,...) ;
 struct saa5249_device* video_drvdata (struct file*) ;

__attribute__((used)) static int saa5249_release(struct file *file)
{
 struct saa5249_device *t = video_drvdata(file);

 i2c_senddata(t, 1, 0x20, -1);
 i2c_senddata(t, 5, 3, 3, -1);
 clear_bit(0, &t->in_use);
 return 0;
}
