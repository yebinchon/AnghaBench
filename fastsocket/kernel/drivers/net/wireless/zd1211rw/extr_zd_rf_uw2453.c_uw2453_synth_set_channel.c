
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zd_chip {int dummy; } ;


 int RF_RV_BITS ;
 int UW2453_REGWRITE (int,int ) ;
 int * uw2453_autocal_synth ;
 int * uw2453_std_synth ;
 int * uw2453_synth_divide ;
 int zd_rfwrite_locked (struct zd_chip*,int ,int ) ;

__attribute__((used)) static int uw2453_synth_set_channel(struct zd_chip *chip, int channel,
 bool autocal)
{
 int r;
 int idx = channel - 1;
 u32 val;

 if (autocal)
  val = UW2453_REGWRITE(1, uw2453_autocal_synth[idx]);
 else
  val = UW2453_REGWRITE(1, uw2453_std_synth[idx]);

 r = zd_rfwrite_locked(chip, val, RF_RV_BITS);
 if (r)
  return r;

 return zd_rfwrite_locked(chip,
  UW2453_REGWRITE(2, uw2453_synth_divide[idx]), RF_RV_BITS);
}
