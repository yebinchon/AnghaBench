
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl {unsigned int ncontrols; struct v4l2_ctrl** cluster; } ;


 int BUG_ON (int ) ;

void v4l2_ctrl_cluster(unsigned ncontrols, struct v4l2_ctrl **controls)
{
 int i;


 BUG_ON(controls[0] == ((void*)0));

 for (i = 0; i < ncontrols; i++) {
  if (controls[i]) {
   controls[i]->cluster = controls;
   controls[i]->ncontrols = ncontrols;
  }
 }
}
