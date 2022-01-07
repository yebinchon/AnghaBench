
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cmg_chars {int * values; } ;
struct channel_path {int cmg; struct cmg_chars* cmg_chars; } ;


 int GFP_KERNEL ;
 int NR_MEASUREMENT_CHARS ;
 struct cmg_chars* kmalloc (int,int ) ;

__attribute__((used)) static void
chsc_initialize_cmg_chars(struct channel_path *chp, u8 cmcv,
     struct cmg_chars *chars)
{
 switch (chp->cmg) {
 case 2:
 case 3:
  chp->cmg_chars = kmalloc(sizeof(struct cmg_chars),
      GFP_KERNEL);
  if (chp->cmg_chars) {
   int i, mask;
   struct cmg_chars *cmg_chars;

   cmg_chars = chp->cmg_chars;
   for (i = 0; i < NR_MEASUREMENT_CHARS; i++) {
    mask = 0x80 >> (i + 3);
    if (cmcv & mask)
     cmg_chars->values[i] = chars->values[i];
    else
     cmg_chars->values[i] = 0;
   }
  }
  break;
 default:

  break;
 }
}
