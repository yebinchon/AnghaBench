
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rt2x00_dev {int dummy; } ;


 int BBP4_MAC_IF_CTRL ;
 int rt2800_bbp_read (struct rt2x00_dev*,int,int *) ;
 int rt2800_bbp_write (struct rt2x00_dev*,int,int ) ;
 int rt2x00_set_field8 (int *,int ,int) ;

__attribute__((used)) static void rt2800_bbp4_mac_if_ctrl(struct rt2x00_dev *rt2x00dev)
{
 u8 value;

 rt2800_bbp_read(rt2x00dev, 4, &value);
 rt2x00_set_field8(&value, BBP4_MAC_IF_CTRL, 1);
 rt2800_bbp_write(rt2x00dev, 4, value);
}
