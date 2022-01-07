
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct b3dfg_dev {TYPE_1__* buffers; } ;
struct TYPE_2__ {struct TYPE_2__** frame; } ;


 int B3DFG_FRAMES_PER_BUFFER ;
 int b3dfg_nbuf ;
 int kfree (TYPE_1__*) ;

__attribute__((used)) static void free_all_frame_buffers(struct b3dfg_dev *fgdev)
{
 int i, j;
 for (i = 0; i < b3dfg_nbuf; i++)
  for (j = 0; j < B3DFG_FRAMES_PER_BUFFER; j++)
   kfree(fgdev->buffers[i].frame[j]);
 kfree(fgdev->buffers);
}
