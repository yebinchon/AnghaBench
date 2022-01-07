
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcam_device {int pport; } ;


 int parport_read_data (int ) ;

__attribute__((used)) static inline unsigned int qcam_ready2(struct qcam_device *qcam)
{
 return (parport_read_data(qcam->pport) & 0x1)?1:0;
}
