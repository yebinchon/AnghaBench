
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int SEEK_SET ;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,char*,...) ;
 int lseek (int,int,int ) ;
 scalar_t__ malloc (int) ;
 int read (int,char*,int) ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static char *saveRead(int file, off_t offset, off_t len, char *name)
{
 char *tmp;
 int count;
 off_t off;
 if ((off = lseek(file, offset, SEEK_SET)) < 0) {
  fprintf(stderr, "%s: fseek: %s\n", name, strerror(errno));
  exit(1);
 }
 if (!(tmp = (char *) malloc(len))) {
  fprintf(stderr, "%s: Can't allocate %ld bytes.\n", name,
   len);
  exit(1);
 }
 count = read(file, tmp, len);
 if (count != len) {
  fprintf(stderr, "%s: read: %s.\n",
   name,
   count ? strerror(errno) : "End of file reached");
  exit(1);
 }
 return tmp;
}
