
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r1conf {int wait_barrier; } ;
struct mddev {struct r1conf* private; } ;


 int lower_barrier (struct r1conf*) ;
 int raise_barrier (struct r1conf*) ;
 int wake_up (int *) ;

__attribute__((used)) static void raid1_quiesce(struct mddev *mddev, int state)
{
 struct r1conf *conf = mddev->private;

 switch(state) {
 case 2:
  wake_up(&conf->wait_barrier);
  break;
 case 1:
  raise_barrier(conf);
  break;
 case 0:
  lower_barrier(conf);
  break;
 }
}
