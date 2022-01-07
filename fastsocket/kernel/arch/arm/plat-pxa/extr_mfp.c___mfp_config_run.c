
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfp_pin {int mfpr_run; int mfpr_off; } ;


 scalar_t__ mfp_configured (struct mfp_pin*) ;
 int mfpr_writel (int ,int ) ;

__attribute__((used)) static inline void __mfp_config_run(struct mfp_pin *p)
{
 if (mfp_configured(p))
  mfpr_writel(p->mfpr_off, p->mfpr_run);
}
