
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_regd {int dummy; } ;


 struct brcms_regd const* cntry_locales ;

__attribute__((used)) static const struct brcms_regd *brcms_default_world_regd(void)
{
 return &cntry_locales[0];
}
