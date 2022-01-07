
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcam_device {int pport; } ;


 int mdelay (int) ;
 int parport_write_control (int ,int) ;

__attribute__((used)) static void qc_reset(struct qcam_device *qcam)
{
 parport_write_control(qcam->pport, 0xc);
 parport_write_control(qcam->pport, 0x8);
 mdelay(1);
 parport_write_control(qcam->pport, 0xc);
 mdelay(1);
}
