
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int full_filename ;
struct TYPE_5__ {scalar_t__ offset; } ;
struct TYPE_6__ {TYPE_1__ file; } ;
typedef TYPE_2__ FDFSTrunkFullInfo ;
typedef int FDFSStorePaths ;


 int EINVAL ;
 int EIO ;
 int ENOSPC ;
 scalar_t__ FDFS_TRUNK_FILE_HEADER_SIZE ;
 int MAX_PATH_SIZE ;
 int O_RDONLY ;
 int SEEK_SET ;
 int close (int) ;
 int errno ;
 int fc_safe_read (int,char*,int const) ;
 scalar_t__ lseek (int,scalar_t__,int ) ;
 int open (char*,int ) ;
 int trunk_get_full_filename_ex (int const*,TYPE_2__ const*,char*,int) ;

int trunk_file_get_content_ex(const FDFSStorePaths *pStorePaths, const FDFSTrunkFullInfo *pTrunkInfo, const int file_size, int *pfd, char *buff, const int buff_size)


{
 char full_filename[MAX_PATH_SIZE];
 int fd;
 int result;
 int read_bytes;

 if (file_size > buff_size)
 {
  return ENOSPC;
 }

 if (pfd != ((void*)0))
 {
  fd = *pfd;
 }
 else
 {
  trunk_get_full_filename_ex(pStorePaths, pTrunkInfo, full_filename, sizeof(full_filename));

  fd = open(full_filename, O_RDONLY);
  if (fd < 0)
  {
   return errno != 0 ? errno : EIO;
  }

  if (lseek(fd, pTrunkInfo->file.offset + FDFS_TRUNK_FILE_HEADER_SIZE, SEEK_SET) < 0)

  {
   result = errno != 0 ? errno : EIO;
   close(fd);
   return result;
  }
 }

 read_bytes = fc_safe_read(fd, buff, file_size);
 if (read_bytes == file_size)
 {
  result = 0;
 }
 else
 {
  result = errno != 0 ? errno : EINVAL;
 }

 if (pfd == ((void*)0))
 {
  close(fd);
 }

 return result;
}
