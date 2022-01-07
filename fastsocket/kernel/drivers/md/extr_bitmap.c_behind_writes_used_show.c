
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {TYPE_1__* bitmap; } ;
typedef int ssize_t ;
struct TYPE_2__ {int behind_writes_used; } ;


 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t
behind_writes_used_show(struct mddev *mddev, char *page)
{
 if (mddev->bitmap == ((void*)0))
  return sprintf(page, "0\n");
 return sprintf(page, "%lu\n",
         mddev->bitmap->behind_writes_used);
}
