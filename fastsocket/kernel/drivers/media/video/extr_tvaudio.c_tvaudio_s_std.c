
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct CHIPSTATE {scalar_t__ radio; } ;


 struct CHIPSTATE* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int tvaudio_s_std(struct v4l2_subdev *sd, v4l2_std_id std)
{
 struct CHIPSTATE *chip = to_state(sd);

 chip->radio = 0;
 return 0;
}
