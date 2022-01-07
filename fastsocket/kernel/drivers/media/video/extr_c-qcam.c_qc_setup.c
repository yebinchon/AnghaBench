
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcam_device {int brightness; int ccd_height; int ccd_width; int top; int left; int contrast; int whitebal; } ;


 int qc_reset (struct qcam_device*) ;
 int qcam_set (struct qcam_device*,int,int) ;

__attribute__((used)) static void qc_setup(struct qcam_device *q)
{
 qc_reset(q);


 qcam_set(q, 11, q->brightness);



 qcam_set(q, 17, q->ccd_height);
 qcam_set(q, 19, q->ccd_width / 2);


 qcam_set(q, 0xd, q->top);
 qcam_set(q, 0xf, q->left);


 qcam_set(q, 0x19, q->contrast);
 qcam_set(q, 0x1f, q->whitebal);


 qcam_set(q, 45, 2);
}
