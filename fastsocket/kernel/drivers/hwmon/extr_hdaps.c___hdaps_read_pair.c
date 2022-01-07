
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int HDAPS_PORT_KMACT ;
 int HDAPS_X_AXIS ;
 int HDAPS_Y_AXIS ;
 int __device_complete () ;
 scalar_t__ __device_refresh_sync () ;
 int hdaps_invert ;
 int inb (int ) ;
 int inw (unsigned int) ;
 int km_activity ;

__attribute__((used)) static int __hdaps_read_pair(unsigned int port1, unsigned int port2,
        int *x, int *y)
{

 if (__device_refresh_sync())
  return -EIO;

 *y = inw(port2);
 *x = inw(port1);
 km_activity = inb(HDAPS_PORT_KMACT);
 __device_complete();


 if (hdaps_invert & HDAPS_X_AXIS)
  *x = -*x;
 if (hdaps_invert & HDAPS_Y_AXIS)
  *y = -*y;

 return 0;
}
