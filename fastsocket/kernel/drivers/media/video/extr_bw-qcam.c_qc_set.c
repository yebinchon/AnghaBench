
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcam_device {int brightness; int height; int transfer_scale; int port_mode; int bpp; int width; int top; int left; int contrast; int whitebal; int status; } ;


 int DIV_ROUND_UP (int,int) ;
 int QC_BIDIR ;
 int QC_MODE_MASK ;
 int QC_PARAM_CHANGE ;
 int QC_UNIDIR ;
 int qc_command (struct qcam_device*,int) ;
 int qc_reset (struct qcam_device*) ;

__attribute__((used)) static void qc_set(struct qcam_device *q)
{
 int val;
 int val2;

 qc_reset(q);





 qc_command(q, 0xb);
 qc_command(q, q->brightness);

 val = q->height / q->transfer_scale;
 qc_command(q, 0x11);
 qc_command(q, val);
 if ((q->port_mode & QC_MODE_MASK) == QC_UNIDIR && q->bpp == 6) {





  val = q->width;
  val2 = q->transfer_scale * 4;
 } else {
  val = q->width * q->bpp;
  val2 = (((q->port_mode & QC_MODE_MASK) == QC_BIDIR) ? 24 : 8) *
      q->transfer_scale;
 }
 val = DIV_ROUND_UP(val, val2);
 qc_command(q, 0x13);
 qc_command(q, val);


 qc_command(q, 0xd);
 qc_command(q, q->top);
 qc_command(q, 0xf);
 qc_command(q, q->left / 2);

 qc_command(q, 0x19);
 qc_command(q, q->contrast);
 qc_command(q, 0x1f);
 qc_command(q, q->whitebal);



 q->status &= (~QC_PARAM_CHANGE);
}
