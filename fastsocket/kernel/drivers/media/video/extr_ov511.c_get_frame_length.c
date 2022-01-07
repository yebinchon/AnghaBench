
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov511_frame {int width; int height; int format; } ;


 int get_depth (int ) ;

__attribute__((used)) static inline long int
get_frame_length(struct ov511_frame *frame)
{
 if (!frame)
  return 0;
 else
  return ((frame->width * frame->height
    * get_depth(frame->format)) >> 3);
}
