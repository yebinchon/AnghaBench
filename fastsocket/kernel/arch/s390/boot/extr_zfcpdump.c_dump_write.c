
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 scalar_t__ ENOSPC ;
 int PRINT_ERR (char*) ;
 scalar_t__ erase_oldest_dump () ;
 scalar_t__ errno ;
 size_t write (int,void const*,size_t) ;

__attribute__((used)) static ssize_t dump_write(int fd, const void *buf, size_t count)
{
 ssize_t written, rc;

 written = 0;
 while (written != count) {
  rc = write(fd, buf + written, count - written);
  if ((rc == -1) && (errno == ENOSPC)) {
   PRINT_ERR("No space left on device!\n");

   if (erase_oldest_dump())
    return -1;
   continue;
  } else if (rc == -1) {

   return -1;
  }
  written += rc;
 }
 return written;
}
