
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int dummy; } ;


 int rt2800_bbp_write (struct rt2x00_dev*,int,int) ;

__attribute__((used)) static void rt2800_init_freq_calibration(struct rt2x00_dev *rt2x00dev)
{
 rt2800_bbp_write(rt2x00dev, 142, 1);
 rt2800_bbp_write(rt2x00dev, 143, 57);
}
