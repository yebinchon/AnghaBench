
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfc_pci {struct bchannel* bch; } ;
struct bchannel {int nr; int Flags; } ;


 int FLG_ACTIVE ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static struct bchannel *
Sel_BCS(struct hfc_pci *hc, int channel)
{
 if (test_bit(FLG_ACTIVE, &hc->bch[0].Flags) &&
  (hc->bch[0].nr & channel))
  return &hc->bch[0];
 else if (test_bit(FLG_ACTIVE, &hc->bch[1].Flags) &&
  (hc->bch[1].nr & channel))
  return &hc->bch[1];
 else
  return ((void*)0);
}
