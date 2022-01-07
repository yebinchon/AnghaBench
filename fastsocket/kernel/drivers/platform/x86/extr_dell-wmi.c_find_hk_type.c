
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmi_header {int type; int length; } ;


 int dell_new_hk_type ;
 int setup_new_hk_map (struct dmi_header const*) ;

__attribute__((used)) static void find_hk_type(const struct dmi_header *dm, void *dummy)
{

 if ((dm->type == 0xb2) && (dm->length > 6)) {
  dell_new_hk_type = 1;
  setup_new_hk_map(dm);
 }

}
