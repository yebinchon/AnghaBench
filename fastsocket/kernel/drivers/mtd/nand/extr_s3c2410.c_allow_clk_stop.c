
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410_nand_info {int dummy; } ;


 int clock_stop ;

__attribute__((used)) static inline int allow_clk_stop(struct s3c2410_nand_info *info)
{
 return clock_stop;
}
