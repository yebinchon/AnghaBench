
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcam_device {int dummy; } ;


 int maxpoll ;
 int msleep_interruptible (int) ;
 unsigned int read_lpdata (struct qcam_device*) ;

__attribute__((used)) static unsigned int qc_waithand2(struct qcam_device *q, int val)
{
 unsigned int status;
 int runs=0;

 do
 {
  status = read_lpdata(q);







  if(runs++>maxpoll)
  {
   msleep_interruptible(5);
  }
  if(runs++>(maxpoll+1000))
   return 0;
 }
 while ((status & 1) != val);

 return status;
}
