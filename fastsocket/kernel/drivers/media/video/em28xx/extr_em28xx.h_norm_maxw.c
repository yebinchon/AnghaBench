
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ is_em2800; scalar_t__ max_range_640_480; scalar_t__ is_webcam; } ;
struct em28xx {unsigned int sensor_xres; TYPE_1__ board; } ;



__attribute__((used)) static inline unsigned int norm_maxw(struct em28xx *dev)
{
 if (dev->board.is_webcam)
  return dev->sensor_xres;

 if (dev->board.max_range_640_480 || dev->board.is_em2800)
  return 640;

 return 720;
}
