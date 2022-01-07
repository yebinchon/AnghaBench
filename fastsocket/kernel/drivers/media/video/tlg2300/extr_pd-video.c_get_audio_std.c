
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct TYPE_2__ {int video_std; int audio_std; } ;


 int TLG_TUNE_ASTD_A2 ;
 int map_size ;
 TYPE_1__* video_to_audio_map ;

__attribute__((used)) static int get_audio_std(v4l2_std_id v4l2_std)
{
 int i = 0;

 for (; i < map_size; i++) {
  if (v4l2_std & video_to_audio_map[i].video_std)
   return video_to_audio_map[i].audio_std;
 }
 return TLG_TUNE_ASTD_A2;
}
