
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qdio_ssqd_desc {int dummy; } ;
struct ccw_device {TYPE_1__* private; } ;
struct TYPE_4__ {int sch_no; } ;
struct TYPE_3__ {TYPE_2__ schid; } ;


 int DBF_EVENT (char*,int ) ;
 int EINVAL ;
 int qdio_setup_get_ssqd (int *,TYPE_2__*,struct qdio_ssqd_desc*) ;

int qdio_get_ssqd_desc(struct ccw_device *cdev,
         struct qdio_ssqd_desc *data)
{

 if (!cdev || !cdev->private)
  return -EINVAL;

 DBF_EVENT("get ssqd:%4x", cdev->private->schid.sch_no);
 return qdio_setup_get_ssqd(((void*)0), &cdev->private->schid, data);
}
