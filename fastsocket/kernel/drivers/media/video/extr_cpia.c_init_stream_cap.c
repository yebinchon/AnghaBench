
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int streamStartLine; } ;
struct cam_data {TYPE_1__ params; } ;


 int CPIA_COMMAND_InitStreamCap ;
 int do_command (struct cam_data*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline int init_stream_cap(struct cam_data *cam)
{
 return do_command(cam, CPIA_COMMAND_InitStreamCap,
     0, cam->params.streamStartLine, 0, 0);
}
