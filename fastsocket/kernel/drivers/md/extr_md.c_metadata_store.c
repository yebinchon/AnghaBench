
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mddev {int external; int persistent; int major_version; int minor_version; char* metadata_type; int disks; } ;
typedef size_t ssize_t ;
struct TYPE_3__ {int * name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 size_t EBUSY ;
 size_t EINVAL ;
 size_t ENOENT ;
 scalar_t__ cmd_match (char const*,char*) ;
 int list_empty (int *) ;
 int simple_strtoul (char const*,char**,int) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int strncpy (char*,char const*,size_t) ;
 TYPE_1__* super_types ;

__attribute__((used)) static ssize_t
metadata_store(struct mddev *mddev, const char *buf, size_t len)
{
 int major, minor;
 char *e;




 if (mddev->external && strncmp(buf, "external:", 9) == 0)
  ;
 else if (!list_empty(&mddev->disks))
  return -EBUSY;

 if (cmd_match(buf, "none")) {
  mddev->persistent = 0;
  mddev->external = 0;
  mddev->major_version = 0;
  mddev->minor_version = 90;
  return len;
 }
 if (strncmp(buf, "external:", 9) == 0) {
  size_t namelen = len-9;
  if (namelen >= sizeof(mddev->metadata_type))
   namelen = sizeof(mddev->metadata_type)-1;
  strncpy(mddev->metadata_type, buf+9, namelen);
  mddev->metadata_type[namelen] = 0;
  if (namelen && mddev->metadata_type[namelen-1] == '\n')
   mddev->metadata_type[--namelen] = 0;
  mddev->persistent = 0;
  mddev->external = 1;
  mddev->major_version = 0;
  mddev->minor_version = 90;
  return len;
 }
 major = simple_strtoul(buf, &e, 10);
 if (e==buf || *e != '.')
  return -EINVAL;
 buf = e+1;
 minor = simple_strtoul(buf, &e, 10);
 if (e==buf || (*e && *e != '\n') )
  return -EINVAL;
 if (major >= ARRAY_SIZE(super_types) || super_types[major].name == ((void*)0))
  return -ENOENT;
 mddev->major_version = major;
 mddev->minor_version = minor;
 mddev->persistent = 1;
 mddev->external = 0;
 return len;
}
