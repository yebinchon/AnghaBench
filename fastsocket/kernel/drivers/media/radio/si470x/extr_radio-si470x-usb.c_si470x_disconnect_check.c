
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si470x_device {scalar_t__ disconnected; } ;


 int EIO ;

int si470x_disconnect_check(struct si470x_device *radio)
{
 if (radio->disconnected)
  return -EIO;
 else
  return 0;
}
