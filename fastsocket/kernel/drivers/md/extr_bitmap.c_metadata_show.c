
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ external; } ;
struct mddev {TYPE_1__ bitmap_info; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t metadata_show(struct mddev *mddev, char *page)
{
 return sprintf(page, "%s\n", (mddev->bitmap_info.external
          ? "external" : "internal"));
}
