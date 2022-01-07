
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcam_device {int dummy; } ;


 scalar_t__ qcam_write_data (struct qcam_device*,unsigned int) ;

__attribute__((used)) static inline int qcam_set(struct qcam_device *qcam, unsigned int cmd, unsigned int data)
{
 if (qcam_write_data(qcam, cmd))
  return -1;
 if (qcam_write_data(qcam, data))
  return -1;
 return 0;
}
