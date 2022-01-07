
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int EXIT_FAILURE ;
 int SEEK_SET ;
 int ULONG_MAX ;
 int exit (int ) ;
 int fatal (char*,long) ;
 scalar_t__ lseek (int,unsigned long,int ) ;
 int perror (char*) ;
 long read (int,int *,unsigned long) ;

__attribute__((used)) static unsigned long do_u64_read(int fd, char *name,
     uint64_t *buf,
     unsigned long index,
     unsigned long count)
{
 long bytes;

 if (index > ULONG_MAX / 8)
  fatal("index overflow: %lu\n", index);

 if (lseek(fd, index * 8, SEEK_SET) < 0) {
  perror(name);
  exit(EXIT_FAILURE);
 }

 bytes = read(fd, buf, count * 8);
 if (bytes < 0) {
  perror(name);
  exit(EXIT_FAILURE);
 }
 if (bytes % 8)
  fatal("partial read: %lu bytes\n", bytes);

 return bytes / 8;
}
