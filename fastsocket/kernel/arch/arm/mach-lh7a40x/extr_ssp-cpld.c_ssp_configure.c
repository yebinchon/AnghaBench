
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device; int mode; int speed; int frame_size_write; int frame_size_read; } ;


 TYPE_1__ ssp_configuration ;

__attribute__((used)) static int ssp_configure (int device, int mode, int speed,
      int frame_size_write, int frame_size_read)
{
 ssp_configuration.device = device;
 ssp_configuration.mode = mode;
 ssp_configuration.speed = speed;
 ssp_configuration.frame_size_write = frame_size_write;
 ssp_configuration.frame_size_read = frame_size_read;

 return 0;
}
