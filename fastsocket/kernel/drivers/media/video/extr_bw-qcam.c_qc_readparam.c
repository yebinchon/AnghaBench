
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcam_device {int dummy; } ;


 int qc_waithand (struct qcam_device*,int) ;
 int write_lpcontrol (struct qcam_device*,int) ;

__attribute__((used)) static int qc_readparam(struct qcam_device *q)
{
 int n1, n2;
 int cmd;

 write_lpcontrol(q, 6);
 n1 = qc_waithand(q, 1);

 write_lpcontrol(q, 0xe);
 n2 = qc_waithand(q, 0);

 cmd = (n1 & 0xf0) | ((n2 & 0xf0) >> 4);
 return cmd;
}
