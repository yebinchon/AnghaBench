
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct saa6588 {int dummy; } ;


 int saa6588_configure (struct saa6588*) ;
 struct saa6588* to_saa6588 (struct v4l2_subdev*) ;

__attribute__((used)) static int saa6588_s_tuner(struct v4l2_subdev *sd, struct v4l2_tuner *vt)
{
 struct saa6588 *s = to_saa6588(sd);

 saa6588_configure(s);
 return 0;
}
