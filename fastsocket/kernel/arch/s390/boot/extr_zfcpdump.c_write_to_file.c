
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_WRONLY ;
 int PRINT_PERR (char*,char const*) ;
 int PRINT_TRACE (char*,char const*,char const*) ;
 int close (int) ;
 int open (char const*,int ) ;
 int strlen (char const*) ;
 int write (int,char const*,int ) ;

__attribute__((used)) static int write_to_file(const char *file, const char *command)
{
 int fh;

 PRINT_TRACE("Write: %s - %s\n", file, command);
 fh = open(file, O_WRONLY);
 if (fh == -1) {
  PRINT_PERR("Could not open %s\n", file);
  return -1;
 }
 if (write(fh, command, strlen(command)) == -1) {
  PRINT_PERR("Write to %s failed\n", file);
  close(fh);
  return -1;
 };
 close(fh);
 return 0;
}
