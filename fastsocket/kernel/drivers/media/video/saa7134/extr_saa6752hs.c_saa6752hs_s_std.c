
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct saa6752hs_state {int standard; } ;


 struct saa6752hs_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int saa6752hs_s_std(struct v4l2_subdev *sd, v4l2_std_id std)
{
 struct saa6752hs_state *h = to_state(sd);

 h->standard = std;
 return 0;
}
