
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 unsigned int BRL_UC_ROW ;
 unsigned long brl_nbchords ;
 int k_deadunicode (struct vc_data*,unsigned int,char) ;
 int k_unicode (struct vc_data*,unsigned int,char) ;

__attribute__((used)) static void k_brlcommit(struct vc_data *vc, unsigned int pattern, char up_flag)
{
 static unsigned long chords;
 static unsigned committed;

 if (!brl_nbchords)
  k_deadunicode(vc, BRL_UC_ROW | pattern, up_flag);
 else {
  committed |= pattern;
  chords++;
  if (chords == brl_nbchords) {
   k_unicode(vc, BRL_UC_ROW | committed, up_flag);
   chords = 0;
   committed = 0;
  }
 }
}
