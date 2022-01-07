
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct cpufreq_frequency_table {int dummy; } ;
struct TYPE_3__ {int frequency; size_t index; } ;


 unsigned int CPUFREQ_TABLE_END ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dprintk (char*,size_t,int,int,unsigned int,size_t,int,int) ;
 int* fid_codes ;
 int fsb ;
 int have_a0 ;
 int invalidate_entry (unsigned int) ;
 TYPE_1__* kzalloc (int,int ) ;
 unsigned int maximum_speed ;
 unsigned int minimum_speed ;
 int* mobile_vid_table ;
 int number_scales ;
 TYPE_1__* powernow_table ;

__attribute__((used)) static int get_ranges(unsigned char *pst)
{
 unsigned int j;
 unsigned int speed;
 u8 fid, vid;

 powernow_table = kzalloc((sizeof(struct cpufreq_frequency_table) *
    (number_scales + 1)), GFP_KERNEL);
 if (!powernow_table)
  return -ENOMEM;

 for (j = 0 ; j < number_scales; j++) {
  fid = *pst++;

  powernow_table[j].frequency = (fsb * fid_codes[fid]) / 10;
  powernow_table[j].index = fid;

  speed = powernow_table[j].frequency;

  if ((fid_codes[fid] % 10) == 5) {




  }

  if (speed < minimum_speed)
   minimum_speed = speed;
  if (speed > maximum_speed)
   maximum_speed = speed;

  vid = *pst++;
  powernow_table[j].index |= (vid << 8);

  dprintk("   FID: 0x%x (%d.%dx [%dMHz])  "
    "VID: 0x%x (%d.%03dV)\n", fid, fid_codes[fid] / 10,
    fid_codes[fid] % 10, speed/1000, vid,
    mobile_vid_table[vid]/1000,
    mobile_vid_table[vid]%1000);
 }
 powernow_table[number_scales].frequency = CPUFREQ_TABLE_END;
 powernow_table[number_scales].index = 0;

 return 0;
}
