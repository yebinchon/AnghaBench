
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcam_device {int pport; } ;


 int parport_read_status (int ) ;

__attribute__((used)) static inline int read_lpstatus(struct qcam_device *q)
{
 return parport_read_status(q->pport);
}
