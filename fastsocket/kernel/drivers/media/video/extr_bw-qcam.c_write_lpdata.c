
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcam_device {int pport; } ;


 int parport_write_data (int ,int) ;

__attribute__((used)) static inline void write_lpdata(struct qcam_device *q, int d)
{
 parport_write_data(q->pport, d);
}
