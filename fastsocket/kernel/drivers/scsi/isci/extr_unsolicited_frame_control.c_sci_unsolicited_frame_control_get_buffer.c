
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_4__ {TYPE_1__* array; } ;
struct sci_unsolicited_frame_control {TYPE_2__ buffers; } ;
typedef enum sci_status { ____Placeholder_sci_status } sci_status ;
struct TYPE_3__ {void* buffer; } ;


 int SCI_FAILURE_INVALID_PARAMETER_VALUE ;
 int SCI_SUCCESS ;
 size_t SCU_MAX_UNSOLICITED_FRAMES ;

enum sci_status sci_unsolicited_frame_control_get_buffer(struct sci_unsolicited_frame_control *uf_control,
        u32 frame_index,
        void **frame_buffer)
{
 if (frame_index < SCU_MAX_UNSOLICITED_FRAMES) {
  *frame_buffer = uf_control->buffers.array[frame_index].buffer;

  return SCI_SUCCESS;
 }

 return SCI_FAILURE_INVALID_PARAMETER_VALUE;
}
