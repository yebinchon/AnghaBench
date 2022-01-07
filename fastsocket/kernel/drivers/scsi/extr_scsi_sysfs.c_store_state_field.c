
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
typedef enum scsi_device_state { ____Placeholder_scsi_device_state } scsi_device_state ;
struct TYPE_3__ {int value; int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 size_t EINVAL ;
 scalar_t__ scsi_device_set_state (struct scsi_device*,int) ;
 TYPE_1__* sdev_states ;
 int strlen (int ) ;
 scalar_t__ strncmp (int ,char const*,int const) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t
store_state_field(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 int i;
 struct scsi_device *sdev = to_scsi_device(dev);
 enum scsi_device_state state = 0;

 for (i = 0; i < ARRAY_SIZE(sdev_states); i++) {
  const int len = strlen(sdev_states[i].name);
  if (strncmp(sdev_states[i].name, buf, len) == 0 &&
     buf[len] == '\n') {
   state = sdev_states[i].value;
   break;
  }
 }
 if (!state)
  return -EINVAL;

 if (scsi_device_set_state(sdev, state))
  return -EINVAL;
 return count;
}
