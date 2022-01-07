
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int platform_driver_unregister (int *) ;
 int s3c2400_serial_driver ;

__attribute__((used)) static inline void s3c2400_serial_exit(void)
{
 platform_driver_unregister(&s3c2400_serial_driver);
}
