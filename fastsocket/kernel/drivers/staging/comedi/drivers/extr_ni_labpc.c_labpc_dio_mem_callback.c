
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int readb (void*) ;
 int writeb (int,void*) ;

__attribute__((used)) static int labpc_dio_mem_callback(int dir, int port, int data,
      unsigned long iobase)
{
 if (dir) {
  writeb(data, (void *)(iobase + port));
  return 0;
 } else {
  return readb((void *)(iobase + port));
 }
}
