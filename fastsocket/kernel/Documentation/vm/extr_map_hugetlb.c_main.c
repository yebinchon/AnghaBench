
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADDR ;
 int FLAGS ;
 int LENGTH ;
 void* MAP_FAILED ;
 int PROTECTION ;
 int check_bytes (void*) ;
 int exit (int) ;
 void* mmap (int ,int ,int ,int ,int ,int ) ;
 int munmap (void*,int ) ;
 int perror (char*) ;
 int printf (char*,void*) ;
 int read_bytes (void*) ;
 int write_bytes (void*) ;

int main(void)
{
 void *addr;

 addr = mmap(ADDR, LENGTH, PROTECTION, FLAGS, 0, 0);
 if (addr == MAP_FAILED) {
  perror("mmap");
  exit(1);
 }

 printf("Returned address is %p\n", addr);
 check_bytes(addr);
 write_bytes(addr);
 read_bytes(addr);

 munmap(addr, LENGTH);

 return 0;
}
