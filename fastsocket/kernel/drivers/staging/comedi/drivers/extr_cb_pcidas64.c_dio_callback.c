
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUG_PRINT (char*,int,int) ;
 int readb (void*) ;
 int writeb (int,void*) ;

__attribute__((used)) static int dio_callback(int dir, int port, int data, unsigned long iobase)
{
 if (dir) {
  writeb(data, (void *)(iobase + port));
  DEBUG_PRINT("wrote 0x%x to port %i\n", data, port);
  return 0;
 } else {
  return readb((void *)(iobase + port));
 }
}
