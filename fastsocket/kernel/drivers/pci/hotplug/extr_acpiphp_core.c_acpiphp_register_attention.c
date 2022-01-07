
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpiphp_attention_info {scalar_t__ get_attn; scalar_t__ set_attn; scalar_t__ owner; } ;


 int EINVAL ;
 struct acpiphp_attention_info* attention_info ;

int acpiphp_register_attention(struct acpiphp_attention_info *info)
{
 int retval = -EINVAL;

 if (info && info->owner && info->set_attn &&
   info->get_attn && !attention_info) {
  retval = 0;
  attention_info = info;
 }
 return retval;
}
