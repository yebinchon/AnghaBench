
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uml_stat {int ust_mode; } ;


 int OS_TYPE_BLOCKDEV ;
 int OS_TYPE_CHARDEV ;
 int OS_TYPE_DIR ;
 int OS_TYPE_FIFO ;
 int OS_TYPE_FILE ;
 int OS_TYPE_SOCK ;
 int OS_TYPE_SYMLINK ;
 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISFIFO (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISSOCK (int ) ;
 int os_stat_file (char*,struct uml_stat*) ;

int os_file_type(char *file)
{
 struct uml_stat buf;
 int err;

 err = os_stat_file(file, &buf);
 if (err < 0)
  return err;

 if (S_ISDIR(buf.ust_mode))
  return OS_TYPE_DIR;
 else if (S_ISLNK(buf.ust_mode))
  return OS_TYPE_SYMLINK;
 else if (S_ISCHR(buf.ust_mode))
  return OS_TYPE_CHARDEV;
 else if (S_ISBLK(buf.ust_mode))
  return OS_TYPE_BLOCKDEV;
 else if (S_ISFIFO(buf.ust_mode))
  return OS_TYPE_FIFO;
 else if (S_ISSOCK(buf.ust_mode))
  return OS_TYPE_SOCK;
 else return OS_TYPE_FILE;
}
