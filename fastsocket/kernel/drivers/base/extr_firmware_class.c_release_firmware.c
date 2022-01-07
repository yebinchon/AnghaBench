
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware {scalar_t__ data; } ;
struct builtin_fw {scalar_t__ data; } ;


 struct builtin_fw* __end_builtin_fw ;
 struct builtin_fw* __start_builtin_fw ;
 int firmware_free_data (struct firmware const*) ;
 int kfree (struct firmware const*) ;

void
release_firmware(const struct firmware *fw)
{
 struct builtin_fw *builtin;

 if (fw) {
  for (builtin = __start_builtin_fw; builtin != __end_builtin_fw;
       builtin++) {
   if (fw->data == builtin->data)
    goto free_fw;
  }
  firmware_free_data(fw);
 free_fw:
  kfree(fw);
 }
}
