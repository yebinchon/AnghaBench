
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DUMP_DIR ;
 int PRINT_PERR (char*) ;
 scalar_t__ umount (int ) ;

__attribute__((used)) static int umount_dump_device(void)
{
 if (umount(DUMP_DIR) != 0) {
  PRINT_PERR("umount failed\n");
  return -1;
 }
 return 0;
}
