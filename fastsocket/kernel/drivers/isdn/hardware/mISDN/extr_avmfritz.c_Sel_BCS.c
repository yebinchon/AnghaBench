
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fritzcard {struct bchannel* bch; } ;
struct bchannel {int nr; int Flags; } ;


 int FLG_ACTIVE ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static struct bchannel *
Sel_BCS(struct fritzcard *fc, u32 channel)
{
 if (test_bit(FLG_ACTIVE, &fc->bch[0].Flags) &&
  (fc->bch[0].nr & channel))
  return &fc->bch[0];
 else if (test_bit(FLG_ACTIVE, &fc->bch[1].Flags) &&
  (fc->bch[1].nr & channel))
  return &fc->bch[1];
 else
  return ((void*)0);
}
