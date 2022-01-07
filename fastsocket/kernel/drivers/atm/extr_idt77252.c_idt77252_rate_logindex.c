
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct idt77252_dev {int dummy; } ;


 int idt77252_int_to_atmfp (int) ;
 int * rate_to_log ;

__attribute__((used)) static u8
idt77252_rate_logindex(struct idt77252_dev *card, int pcr)
{
 u16 afp;

 afp = idt77252_int_to_atmfp(pcr < 0 ? -pcr : pcr);
 if (pcr < 0)
  return rate_to_log[(afp >> 5) & 0x1ff];
 return rate_to_log[((afp >> 5) + 1) & 0x1ff];
}
