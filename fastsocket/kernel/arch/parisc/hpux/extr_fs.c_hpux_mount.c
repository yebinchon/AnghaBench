
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSYS ;

int hpux_mount(const char *fs, const char *path, int mflag,
  const char *fstype, const char *dataptr, int datalen)
{
 return -ENOSYS;
}
