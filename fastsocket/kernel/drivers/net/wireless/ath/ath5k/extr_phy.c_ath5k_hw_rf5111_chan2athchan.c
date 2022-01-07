
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath5k_athchan_2ghz {int a2_athchan; int a2_flags; } ;


 int EINVAL ;

__attribute__((used)) static int
ath5k_hw_rf5111_chan2athchan(unsigned int ieee,
  struct ath5k_athchan_2ghz *athchan)
{
 int channel;


 channel = (int)ieee;




 if (channel <= 13) {
  athchan->a2_athchan = 115 + channel;
  athchan->a2_flags = 0x46;
 } else if (channel == 14) {
  athchan->a2_athchan = 124;
  athchan->a2_flags = 0x44;
 } else if (channel >= 15 && channel <= 26) {
  athchan->a2_athchan = ((channel - 14) * 4) + 132;
  athchan->a2_flags = 0x46;
 } else
  return -EINVAL;

 return 0;
}
