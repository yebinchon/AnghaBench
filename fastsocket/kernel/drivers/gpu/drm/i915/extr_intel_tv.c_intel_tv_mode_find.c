
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tv_mode {int dummy; } ;
struct intel_tv {int tv_format; } ;


 struct tv_mode const* intel_tv_mode_lookup (int ) ;

__attribute__((used)) static const struct tv_mode *
intel_tv_mode_find(struct intel_tv *intel_tv)
{
 return intel_tv_mode_lookup(intel_tv->tv_format);
}
