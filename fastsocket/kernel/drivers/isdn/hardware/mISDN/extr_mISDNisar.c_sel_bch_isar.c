
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct isar_hw {struct isar_ch* ch; } ;
struct isar_ch {int dpath; } ;



__attribute__((used)) static inline struct isar_ch *
sel_bch_isar(struct isar_hw *isar, u8 dpath)
{
 struct isar_ch *base = &isar->ch[0];

 if ((!dpath) || (dpath > 2))
  return ((void*)0);
 if (base->dpath == dpath)
  return base;
 base++;
 if (base->dpath == dpath)
  return base;
 return ((void*)0);
}
