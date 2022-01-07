
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 int O_RDONLY ;
 int PRINT_PERR (char*,char const*) ;
 int PRINT_TRACE (char*,char const*) ;
 int close (int) ;
 int open (char const*,int ) ;
 size_t read (int,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static int read_file(const char *file, char *buf, int size)
{
 ssize_t count;
 int fh;

 PRINT_TRACE("Read: %s:\n", file);
 fh = open(file, O_RDONLY);
 if (fh == -1) {
  PRINT_PERR("open %s failed\n", file);
  return -1;
 }
 count = read(fh, buf, size - 1);
 if (count < 0) {
  PRINT_PERR("read %s failed\n", file);
  close(fh);
  return -1;
 }
 buf[count] = 0;
 if (buf[strlen(buf) - 1] == '\n')
  buf[strlen(buf) - 1] = 0;
 close(fh);
 PRINT_TRACE("'%s'\n", buf);

 return 0;
}
