
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pgid {int dummy; } ;
struct ccw_device {TYPE_1__* private; } ;
struct TYPE_2__ {int * pgid; } ;


 int memcpy (int *,struct pgid*,int) ;

__attribute__((used)) static void pgid_fill(struct ccw_device *cdev, struct pgid *pgid)
{
 int i;

 for (i = 0; i < 8; i++)
  memcpy(&cdev->private->pgid[i], pgid, sizeof(struct pgid));
}
