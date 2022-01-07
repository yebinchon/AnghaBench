
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int level; scalar_t__ layout; int new_level; scalar_t__ new_layout; } ;


 scalar_t__ ALGORITHM_PARITY_N ;
 int EINVAL ;
 void* ERR_PTR (int ) ;
 void* raid45_takeover_raid0 (struct mddev*,int) ;
 void* setup_conf (struct mddev*) ;

__attribute__((used)) static void *raid4_takeover(struct mddev *mddev)
{




 if (mddev->level == 0)
  return raid45_takeover_raid0(mddev, 4);
 if (mddev->level == 5 &&
     mddev->layout == ALGORITHM_PARITY_N) {
  mddev->new_layout = 0;
  mddev->new_level = 4;
  return setup_conf(mddev);
 }
 return ERR_PTR(-EINVAL);
}
