
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stripes_to_set; int stripes; } ;
struct raid_set {TYPE_1__ sc; } ;
typedef enum raid_set_flags { ____Placeholder_raid_set_flags } raid_set_flags ;


 int EINVAL ;
 int EPERM ;
 int STRIPES_MAX ;
 int STRIPES_MIN ;
 int _absolute (char*,int,int) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 scalar_t__ range_ok (int,int ,int ) ;
 int sscanf (char*,char*,int*) ;
 int wake_do_raid (struct raid_set*) ;

__attribute__((used)) static int sc_resize(struct raid_set *rs, int argc, char **argv,
       enum raid_set_flags flag)
{
 int act, stripes;

 if (argc != 2)
  return -EINVAL;


 if (atomic_read(&rs->sc.stripes_to_set))
  return -EPERM;

 if (sscanf(argv[1], "%d", &stripes) == 1 &&
     stripes > 0) {
  act = atomic_read(&rs->sc.stripes);


  stripes = _absolute(argv[0], act, stripes);





  if (range_ok(stripes, STRIPES_MIN, STRIPES_MAX) &&
      stripes != atomic_read(&rs->sc.stripes)) {
   atomic_set(&rs->sc.stripes_to_set, stripes);
   wake_do_raid(rs);
   return 0;
  }
 }

 return -EINVAL;
}
