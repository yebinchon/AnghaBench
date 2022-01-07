
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {scalar_t__ manf_id; scalar_t__ card_id; } ;


 scalar_t__ CF8305_CARDID ;
 scalar_t__ CF8305_MANFID ;

__attribute__((used)) static inline int if_cs_hw_is_cf8305(struct pcmcia_device *p_dev)
{
 return (p_dev->manf_id == CF8305_MANFID &&
  p_dev->card_id == CF8305_CARDID);
}
