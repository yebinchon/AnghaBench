
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S3C2443_SWRST ;
 int S3C2443_SWRST_RESET ;
 int __raw_writel (int ,int ) ;

__attribute__((used)) static void s3c2443_hard_reset(void)
{
 __raw_writel(S3C2443_SWRST_RESET, S3C2443_SWRST);
}
