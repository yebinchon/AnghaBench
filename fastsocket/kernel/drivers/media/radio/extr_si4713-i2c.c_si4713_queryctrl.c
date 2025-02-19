
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_queryctrl {int id; } ;


 int DEFAULT_ACOMP_ATIME ;
 int DEFAULT_ACOMP_GAIN ;
 int DEFAULT_ACOMP_RTIME ;
 int DEFAULT_ACOMP_THRESHOLD ;
 int DEFAULT_LIMITER_DEV ;
 int DEFAULT_LIMITER_RTIME ;
 int DEFAULT_MUTE ;
 int DEFAULT_PILOT_DEVIATION ;
 int DEFAULT_PILOT_FREQUENCY ;
 int DEFAULT_POWER_LEVEL ;
 int DEFAULT_RDS_DEVIATION ;
 int DEFAULT_RDS_PI ;
 int DEFAULT_RDS_PTY ;
 int EINVAL ;
 int MAX_ACOMP_ATTACK_TIME ;
 int MAX_ACOMP_GAIN ;
 int MAX_ACOMP_RELEASE_TIME ;
 int MAX_ACOMP_THRESHOLD ;
 int MAX_LIMITER_DEVIATION ;
 int MAX_LIMITER_RELEASE_TIME ;
 int MAX_PILOT_DEVIATION ;
 int MAX_PILOT_FREQUENCY ;
 int MAX_RDS_DEVIATION ;
 int MAX_RDS_PS_NAME ;
 int MAX_RDS_RADIO_TEXT ;
 int MIN_ACOMP_THRESHOLD ;
 int V4L2_PREEMPHASIS_50_uS ;
 int V4L2_PREEMPHASIS_75_uS ;
 int V4L2_PREEMPHASIS_DISABLED ;
 int v4l2_ctrl_query_fill (struct v4l2_queryctrl*,int,int,int,int) ;

__attribute__((used)) static int si4713_queryctrl(struct v4l2_subdev *sd, struct v4l2_queryctrl *qc)
{
 int rval = 0;

 switch (qc->id) {

 case 139:
  rval = v4l2_ctrl_query_fill(qc, 0, 1, 1, DEFAULT_MUTE);
  break;

 case 134:
  rval = v4l2_ctrl_query_fill(qc, 0, 0xFFFF, 1, DEFAULT_RDS_PI);
  break;
 case 132:
  rval = v4l2_ctrl_query_fill(qc, 0, 31, 1, DEFAULT_RDS_PTY);
  break;
 case 135:
  rval = v4l2_ctrl_query_fill(qc, 0, MAX_RDS_DEVIATION,
      10, DEFAULT_RDS_DEVIATION);
  break;
 case 133:





  rval = v4l2_ctrl_query_fill(qc, 0, MAX_RDS_PS_NAME, 8, 0);
  break;
 case 131:





  rval = v4l2_ctrl_query_fill(qc, 0, MAX_RDS_RADIO_TEXT, 32, 0);
  break;

 case 141:
  rval = v4l2_ctrl_query_fill(qc, 0, 1, 1, 1);
  break;
 case 140:
  rval = v4l2_ctrl_query_fill(qc, 250, MAX_LIMITER_RELEASE_TIME,
      50, DEFAULT_LIMITER_RTIME);
  break;
 case 142:
  rval = v4l2_ctrl_query_fill(qc, 0, MAX_LIMITER_DEVIATION,
      10, DEFAULT_LIMITER_DEV);
  break;

 case 146:
  rval = v4l2_ctrl_query_fill(qc, 0, 1, 1, 1);
  break;
 case 145:
  rval = v4l2_ctrl_query_fill(qc, 0, MAX_ACOMP_GAIN, 1,
      DEFAULT_ACOMP_GAIN);
  break;
 case 143:
  rval = v4l2_ctrl_query_fill(qc, MIN_ACOMP_THRESHOLD,
      MAX_ACOMP_THRESHOLD, 1,
      DEFAULT_ACOMP_THRESHOLD);
  break;
 case 147:
  rval = v4l2_ctrl_query_fill(qc, 0, MAX_ACOMP_ATTACK_TIME,
      500, DEFAULT_ACOMP_ATIME);
  break;
 case 144:
  rval = v4l2_ctrl_query_fill(qc, 100000, MAX_ACOMP_RELEASE_TIME,
      100000, DEFAULT_ACOMP_RTIME);
  break;

 case 137:
  rval = v4l2_ctrl_query_fill(qc, 0, 1, 1, 1);
  break;
 case 138:
  rval = v4l2_ctrl_query_fill(qc, 0, MAX_PILOT_DEVIATION,
      10, DEFAULT_PILOT_DEVIATION);
  break;
 case 136:
  rval = v4l2_ctrl_query_fill(qc, 0, MAX_PILOT_FREQUENCY,
      1, DEFAULT_PILOT_FREQUENCY);
  break;

 case 128:
  rval = v4l2_ctrl_query_fill(qc, V4L2_PREEMPHASIS_DISABLED,
      V4L2_PREEMPHASIS_75_uS, 1,
      V4L2_PREEMPHASIS_50_uS);
  break;
 case 129:
  rval = v4l2_ctrl_query_fill(qc, 0, 120, 1, DEFAULT_POWER_LEVEL);
  break;
 case 130:
  rval = v4l2_ctrl_query_fill(qc, 0, 191, 1, 0);
  break;
 default:
  rval = -EINVAL;
  break;
 };

 return rval;
}
