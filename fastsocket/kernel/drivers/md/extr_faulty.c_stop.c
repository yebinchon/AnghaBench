
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {struct faulty_conf* private; } ;
struct faulty_conf {int dummy; } ;


 int kfree (struct faulty_conf*) ;

__attribute__((used)) static int stop(struct mddev *mddev)
{
 struct faulty_conf *conf = mddev->private;

 kfree(conf);
 mddev->private = ((void*)0);
 return 0;
}
