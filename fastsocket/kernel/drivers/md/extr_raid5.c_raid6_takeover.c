
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int degraded; int raid_disks; int layout; int new_level; int new_layout; int delta_disks; int * pers; } ;



 int ALGORITHM_LEFT_ASYMMETRIC_6 ;

 int ALGORITHM_LEFT_SYMMETRIC_6 ;

 int ALGORITHM_PARITY_0_6 ;


 int ALGORITHM_RIGHT_ASYMMETRIC_6 ;

 int ALGORITHM_RIGHT_SYMMETRIC_6 ;
 int EINVAL ;
 void* ERR_PTR (int ) ;
 int raid5_personality ;
 void* setup_conf (struct mddev*) ;

__attribute__((used)) static void *raid6_takeover(struct mddev *mddev)
{




 int new_layout;

 if (mddev->pers != &raid5_personality)
  return ERR_PTR(-EINVAL);
 if (mddev->degraded > 1)
  return ERR_PTR(-EINVAL);
 if (mddev->raid_disks > 253)
  return ERR_PTR(-EINVAL);
 if (mddev->raid_disks < 3)
  return ERR_PTR(-EINVAL);

 switch (mddev->layout) {
 case 133:
  new_layout = ALGORITHM_LEFT_ASYMMETRIC_6;
  break;
 case 129:
  new_layout = ALGORITHM_RIGHT_ASYMMETRIC_6;
  break;
 case 132:
  new_layout = ALGORITHM_LEFT_SYMMETRIC_6;
  break;
 case 128:
  new_layout = ALGORITHM_RIGHT_SYMMETRIC_6;
  break;
 case 131:
  new_layout = ALGORITHM_PARITY_0_6;
  break;
 case 130:
  new_layout = 130;
  break;
 default:
  return ERR_PTR(-EINVAL);
 }
 mddev->new_level = 6;
 mddev->new_layout = new_layout;
 mddev->delta_disks = 1;
 mddev->raid_disks += 1;
 return setup_conf(mddev);
}
