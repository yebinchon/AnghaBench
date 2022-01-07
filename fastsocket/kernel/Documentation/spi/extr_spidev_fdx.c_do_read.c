
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int fprintf (int ,char*) ;
 int memset (unsigned char*,int ,int) ;
 int perror (char*) ;
 int printf (char*,...) ;
 int read (int,unsigned char*,int) ;
 int stderr ;

__attribute__((used)) static void do_read(int fd, int len)
{
 unsigned char buf[32], *bp;
 int status;


 if (len < 2)
  len = 2;
 else if (len > sizeof(buf))
  len = sizeof(buf);
 memset(buf, 0, sizeof buf);

 status = read(fd, buf, len);
 if (status < 0) {
  perror("read");
  return;
 }
 if (status != len) {
  fprintf(stderr, "short read\n");
  return;
 }

 printf("read(%2d, %2d): %02x %02x,", len, status,
  buf[0], buf[1]);
 status -= 2;
 bp = buf + 2;
 while (status-- > 0)
  printf(" %02x", *bp++);
 printf("\n");
}
