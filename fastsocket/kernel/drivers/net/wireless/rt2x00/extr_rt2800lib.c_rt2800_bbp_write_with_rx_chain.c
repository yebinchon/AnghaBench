
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__ rx_chain_num; } ;
struct rt2x00_dev {TYPE_1__ default_ant; } ;


 int BBP27_RX_CHAIN_SEL ;
 int rt2800_bbp_read (struct rt2x00_dev*,int,scalar_t__*) ;
 int rt2800_bbp_write (struct rt2x00_dev*,unsigned int const,scalar_t__ const) ;
 int rt2x00_set_field8 (scalar_t__*,int ,scalar_t__) ;

__attribute__((used)) static void rt2800_bbp_write_with_rx_chain(struct rt2x00_dev *rt2x00dev,
        const unsigned int word,
        const u8 value)
{
 u8 chain, reg;

 for (chain = 0; chain < rt2x00dev->default_ant.rx_chain_num; chain++) {
  rt2800_bbp_read(rt2x00dev, 27, &reg);
  rt2x00_set_field8(&reg, BBP27_RX_CHAIN_SEL, chain);
  rt2800_bbp_write(rt2x00dev, 27, reg);

  rt2800_bbp_write(rt2x00dev, word, value);
 }
}
