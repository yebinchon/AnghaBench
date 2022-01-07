
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sh_mobile_ceu_dev {int dummy; } ;


 int CAPSR ;
 int ceu_read (struct sh_mobile_ceu_dev*,int ) ;
 int ceu_write (struct sh_mobile_ceu_dev*,int ,int) ;

__attribute__((used)) static u32 capture_save_reset(struct sh_mobile_ceu_dev *pcdev)
{
 u32 capsr = ceu_read(pcdev, CAPSR);
 ceu_write(pcdev, CAPSR, 1 << 16);
 return capsr;
}
