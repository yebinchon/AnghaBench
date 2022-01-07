
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int vid; int av; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int PS3AV_CMD_AV_VID_480P ;
 TYPE_1__* ps3av_vid_video2av_table ;

__attribute__((used)) static u32 ps3av_vid_video2av(int vid)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(ps3av_vid_video2av_table); i++)
  if (ps3av_vid_video2av_table[i].vid == vid)
   return ps3av_vid_video2av_table[i].av;

 return PS3AV_CMD_AV_VID_480P;
}
