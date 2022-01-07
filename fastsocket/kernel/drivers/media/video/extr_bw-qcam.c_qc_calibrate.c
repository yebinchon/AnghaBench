
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcam_device {int whitebal; } ;


 int mdelay (int) ;
 int qc_command (struct qcam_device*,int) ;
 int qc_readparam (struct qcam_device*) ;
 int schedule () ;

__attribute__((used)) static int qc_calibrate(struct qcam_device *q)
{






 int value;
 int count = 0;

 qc_command(q, 27);
 qc_command(q, 0);





 do {
  qc_command(q, 33);
  value = qc_readparam(q);
  mdelay(1);
  schedule();
  count++;
 } while (value == 0xff && count<2048);

 q->whitebal = value;
 return value;
}
