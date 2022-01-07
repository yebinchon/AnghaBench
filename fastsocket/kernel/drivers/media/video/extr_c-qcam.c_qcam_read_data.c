
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcam_device {int pport; } ;


 int parport_read_status (int ) ;
 scalar_t__ qcam_await_ready1 (struct qcam_device*,int) ;
 int qcam_set_ack (struct qcam_device*,int) ;

__attribute__((used)) static int qcam_read_data(struct qcam_device *qcam)
{
 unsigned int idata;
 qcam_set_ack(qcam, 0);
 if (qcam_await_ready1(qcam, 1)) return -1;
 idata = parport_read_status(qcam->pport) & 0xf0;
 qcam_set_ack(qcam, 1);
 if (qcam_await_ready1(qcam, 0)) return -1;
 idata |= (parport_read_status(qcam->pport) >> 4);
 return idata;
}
