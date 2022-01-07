
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int readw (void*) ;
 int writew (int,void*) ;

__attribute__((used)) static int dio_callback_4020(int dir, int port, int data, unsigned long iobase)
{
 if (dir) {
  writew(data, (void *)(iobase + 2 * port));
  return 0;
 } else {
  return readw((void *)(iobase + 2 * port));
 }
}
