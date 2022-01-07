
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcam_device {int pport; } ;


 int parport_data_forward (int ) ;
 int parport_data_reverse (int ) ;
 int parport_write_control (int ,int) ;

__attribute__((used)) static inline void write_lpcontrol(struct qcam_device *q, int d)
{
 if (d & 0x20) {

  parport_data_reverse(q->pport);
 } else {

  parport_data_forward(q->pport);
 }



 d &= ~0x20;
 parport_write_control(q->pport, d);
}
