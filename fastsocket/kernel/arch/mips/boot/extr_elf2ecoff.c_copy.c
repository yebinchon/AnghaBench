
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int SEEK_SET ;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ lseek (int,int,int ) ;
 int perror (char*) ;
 int read (int,char*,int) ;
 int stderr ;
 char* strerror (int ) ;
 int write (int,char*,int) ;

__attribute__((used)) static void copy(int out, int in, off_t offset, off_t size)
{
 char ibuf[4096];
 int remaining, cur, count;


 if (lseek(in, offset, SEEK_SET) < 0) {
  perror("copy: lseek");
  exit(1);
 }

 remaining = size;
 while (remaining) {
  cur = remaining;
  if (cur > sizeof ibuf)
   cur = sizeof ibuf;
  remaining -= cur;
  if ((count = read(in, ibuf, cur)) != cur) {
   fprintf(stderr, "copy: read: %s\n",
    count ? strerror(errno) :
    "premature end of file");
   exit(1);
  }
  if ((count = write(out, ibuf, cur)) != cur) {
   perror("copy: write");
   exit(1);
  }
 }
}
