
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_card {int kref; } ;


 int fw_card_release ;
 int kref_put (int *,int ) ;

__attribute__((used)) static inline void fw_card_put(struct fw_card *card)
{
 kref_put(&card->kref, fw_card_release);
}
