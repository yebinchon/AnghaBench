
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_card {scalar_t__ n_frames; } ;



__attribute__((used)) static inline int video_card_initialized(struct video_card *v)
{
 return v->n_frames > 0;
}
