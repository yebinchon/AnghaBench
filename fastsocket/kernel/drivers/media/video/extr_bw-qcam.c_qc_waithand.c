
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcam_device {int dummy; } ;


 int maxpoll ;
 int msleep_interruptible (int) ;
 int read_lpstatus (struct qcam_device*) ;

__attribute__((used)) static int qc_waithand(struct qcam_device *q, int val)
{
 int status;
 int runs=0;

 if (val)
 {
  while (!((status = read_lpstatus(q)) & 8))
  {







   if(runs++>maxpoll)
   {
    msleep_interruptible(5);
   }
   if(runs>(maxpoll+1000))
    return -1;
  }
 }
 else
 {
  while (((status = read_lpstatus(q)) & 8))
  {







   if(runs++>maxpoll)
   {
    msleep_interruptible(5);
   }
   if(runs++>(maxpoll+1000))
    return -1;
  }
 }

 return status;
}
