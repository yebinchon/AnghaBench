
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpia_frame {int state; } ;


 int FRAME_NUM ;
 int FRAME_UNUSED ;

__attribute__((used)) static inline void free_frames(struct cpia_frame frame[FRAME_NUM])
{
 int i;

 for (i=0; i < FRAME_NUM; i++)
  frame[i].state = FRAME_UNUSED;
 return;
}
