
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rsxx_cardinfo {scalar_t__ regmap; int eeh_state; } ;


 scalar_t__ CREG_DATA (int) ;
 int EIO ;
 scalar_t__ LITTLE_ENDIAN ;
 int ioread32 (scalar_t__) ;
 int ioread32be (scalar_t__) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int copy_from_creg_data(struct rsxx_cardinfo *card,
    int cnt8,
    void *buf,
    unsigned int stream)
{
 int i = 0;
 u32 *data = buf;

 if (unlikely(card->eeh_state))
  return -EIO;

 for (i = 0; cnt8 > 0; i++, cnt8 -= 4) {




  if (LITTLE_ENDIAN && stream)
   data[i] = ioread32be(card->regmap + CREG_DATA(i));
  else
   data[i] = ioread32(card->regmap + CREG_DATA(i));
 }

 return 0;
}
