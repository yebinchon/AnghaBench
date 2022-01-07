
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcam_device {int dummy; } ;


 int qcam_read_data (struct qcam_device*) ;
 scalar_t__ qcam_write_data (struct qcam_device*,unsigned int) ;

__attribute__((used)) static inline int qcam_get(struct qcam_device *qcam, unsigned int cmd)
{
 if (qcam_write_data(qcam, cmd))
  return -1;
 return qcam_read_data(qcam);
}
