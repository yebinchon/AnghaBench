
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcam_device {int mode; int transfer_scale; int bpp; int port_mode; int status; } ;



 int QC_MODE_MASK ;

 int QC_PARAM_CHANGE ;


__attribute__((used)) static int qc_setscanmode(struct qcam_device *q)
{
 int old_mode = q->mode;

 switch (q->transfer_scale)
 {
  case 1:
   q->mode = 0;
   break;
  case 2:
   q->mode = 4;
   break;
  case 4:
   q->mode = 8;
   break;
 }

 switch (q->bpp)
 {
  case 4:
   break;
  case 6:
   q->mode += 2;
   break;
 }

 switch (q->port_mode & QC_MODE_MASK)
 {
  case 130:
   q->mode += 1;
   break;
  case 129:
  case 128:
   break;
 }

 if (q->mode != old_mode)
  q->status |= QC_PARAM_CHANGE;

 return 0;
}
