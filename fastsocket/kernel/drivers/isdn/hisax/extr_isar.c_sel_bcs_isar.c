
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct IsdnCardState {struct BCState* bcs; } ;
struct TYPE_3__ {int dpath; } ;
struct TYPE_4__ {TYPE_1__ isar; } ;
struct BCState {TYPE_2__ hw; } ;



__attribute__((used)) static inline
struct BCState *sel_bcs_isar(struct IsdnCardState *cs, u_char dpath)
{
 if ((!dpath) || (dpath == 3))
  return(((void*)0));
 if (cs->bcs[0].hw.isar.dpath == dpath)
  return(&cs->bcs[0]);
 if (cs->bcs[1].hw.isar.dpath == dpath)
  return(&cs->bcs[1]);
 return(((void*)0));
}
