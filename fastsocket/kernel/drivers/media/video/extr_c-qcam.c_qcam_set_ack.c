
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcam_device {int pport; } ;


 int parport_frob_control (int ,int,int) ;

__attribute__((used)) static inline void qcam_set_ack(struct qcam_device *qcam, unsigned int i)
{


 parport_frob_control(qcam->pport, 8, i?8:0);
}
