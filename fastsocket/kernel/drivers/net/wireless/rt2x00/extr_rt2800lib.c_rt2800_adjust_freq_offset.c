
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rt2x00_dev {scalar_t__ freq_offset; } ;


 scalar_t__ FREQ_OFFSET_BOUND ;
 int RFCSR17_CODE ;
 int rt2800_rfcsr_read (struct rt2x00_dev*,int,int *) ;
 int rt2800_rfcsr_write (struct rt2x00_dev*,int,int ) ;
 int rt2x00_set_field8 (int *,int ,scalar_t__) ;

__attribute__((used)) static void rt2800_adjust_freq_offset(struct rt2x00_dev *rt2x00dev)
{
 u8 rfcsr;

 rt2800_rfcsr_read(rt2x00dev, 17, &rfcsr);
 if (rt2x00dev->freq_offset > FREQ_OFFSET_BOUND)
  rt2x00_set_field8(&rfcsr, RFCSR17_CODE, FREQ_OFFSET_BOUND);
 else
  rt2x00_set_field8(&rfcsr, RFCSR17_CODE, rt2x00dev->freq_offset);
 rt2800_rfcsr_write(rt2x00dev, 17, rfcsr);
}
