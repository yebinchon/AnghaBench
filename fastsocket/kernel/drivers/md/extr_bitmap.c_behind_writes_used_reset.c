
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {TYPE_1__* bitmap; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {scalar_t__ behind_writes_used; } ;



__attribute__((used)) static ssize_t
behind_writes_used_reset(struct mddev *mddev, const char *buf, size_t len)
{
 if (mddev->bitmap)
  mddev->bitmap->behind_writes_used = 0;
 return len;
}
