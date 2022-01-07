
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOENT ;
 scalar_t__ close (int) ;
 scalar_t__ errno ;
 int storage_stat_fd ;
 int storage_write_to_stat_file () ;

__attribute__((used)) static int storage_close_stat_file()
{
 int result;

 result = 0;
 if (storage_stat_fd >= 0)
 {
  result = storage_write_to_stat_file();
  if (close(storage_stat_fd) != 0)
  {
   result += errno != 0 ? errno : ENOENT;
  }
  storage_stat_fd = -1;
 }

 return result;
}
