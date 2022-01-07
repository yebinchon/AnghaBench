
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; int id; } ;


 int EFAULT ;
 int EINVAL ;
 int EIO ;
 int ENXIO ;
 int FCU_FAN_ABSENT_ID ;
 scalar_t__ FCU_FAN_RPM ;
 int fan_read_reg (int,unsigned char*,int) ;
 TYPE_1__* fcu_fans ;
 int fcu_rpm_shift ;

__attribute__((used)) static int get_rpm_fan(int fan_index, int programmed)
{
 unsigned char failure;
 unsigned char active;
 unsigned char buf[2];
 int rc, id, reg_base;

 if (fcu_fans[fan_index].type != FCU_FAN_RPM)
  return -EINVAL;
 id = fcu_fans[fan_index].id;
 if (id == FCU_FAN_ABSENT_ID)
  return -EINVAL;

 rc = fan_read_reg(0xb, &failure, 1);
 if (rc != 1)
  return -EIO;
 if ((failure & (1 << id)) != 0)
  return -EFAULT;
 rc = fan_read_reg(0xd, &active, 1);
 if (rc != 1)
  return -EIO;
 if ((active & (1 << id)) == 0)
  return -ENXIO;


 reg_base = programmed ? 0x10 : 0x11;
 rc = fan_read_reg(reg_base + (id * 2), buf, 2);
 if (rc != 2)
  return -EIO;

 return (buf[0] << (8 - fcu_rpm_shift)) | buf[1] >> fcu_rpm_shift;
}
