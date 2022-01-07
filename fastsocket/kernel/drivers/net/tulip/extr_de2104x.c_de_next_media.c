
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct de_private {int media_type; } ;


 scalar_t__ de_ok_to_advertise (struct de_private*,int ) ;

__attribute__((used)) static void de_next_media (struct de_private *de, u32 *media,
      unsigned int n_media)
{
 unsigned int i;

 for (i = 0; i < n_media; i++) {
  if (de_ok_to_advertise(de, media[i])) {
   de->media_type = media[i];
   return;
  }
 }
}
