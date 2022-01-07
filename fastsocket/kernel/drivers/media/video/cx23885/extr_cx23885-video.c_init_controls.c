
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_control {int value; int id; } ;
struct cx23885_dev {int dummy; } ;
struct TYPE_3__ {int default_value; int id; } ;
struct TYPE_4__ {TYPE_1__ v; } ;


 int CX23885_CTLS ;
 TYPE_2__* cx23885_ctls ;
 int cx23885_set_control (struct cx23885_dev*,struct v4l2_control*) ;

__attribute__((used)) static void init_controls(struct cx23885_dev *dev)
{
 struct v4l2_control ctrl;
 int i;

 for (i = 0; i < CX23885_CTLS; i++) {
  ctrl.id = cx23885_ctls[i].v.id;
  ctrl.value = cx23885_ctls[i].v.default_value;

  cx23885_set_control(dev, &ctrl);
 }
}
