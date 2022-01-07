
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_drv {int dummy; } ;
struct fw_desc {scalar_t__ len; int * data; } ;


 int vfree (int *) ;

__attribute__((used)) static void iwl_free_fw_desc(struct iwl_drv *drv, struct fw_desc *desc)
{
 vfree(desc->data);
 desc->data = ((void*)0);
 desc->len = 0;
}
