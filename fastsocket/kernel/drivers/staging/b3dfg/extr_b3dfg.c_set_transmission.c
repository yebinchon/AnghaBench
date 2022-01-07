
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b3dfg_dev {scalar_t__ transmission_enabled; } ;


 int disable_transmission (struct b3dfg_dev*) ;
 int enable_transmission (struct b3dfg_dev*) ;

__attribute__((used)) static int set_transmission(struct b3dfg_dev *fgdev, int enabled)
{
 int res = 0;

 if (enabled && !fgdev->transmission_enabled)
  res = enable_transmission(fgdev);
 else if (!enabled && fgdev->transmission_enabled)
  disable_transmission(fgdev);

 return res;
}
