
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qcam_device {TYPE_1__* pdev; } ;
struct parport {int dummy; } ;
struct TYPE_2__ {struct parport* port; } ;


 int close_bwqcam (struct qcam_device*) ;
 int num_cams ;
 struct qcam_device** qcams ;

__attribute__((used)) static void bwqcam_detach(struct parport *port)
{
 int i;
 for (i = 0; i < num_cams; i++) {
  struct qcam_device *qcam = qcams[i];
  if (qcam && qcam->pdev->port == port) {
   qcams[i] = ((void*)0);
   close_bwqcam(qcam);
  }
 }
}
