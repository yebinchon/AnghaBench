
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VMWDT_RUNNING ;
 int WARN_ON (int) ;
 int __diag288 (int ,int ,char*,int ) ;
 int clear_bit (int ,int *) ;
 int vmwdt_is_open ;
 int wdt_cancel ;

__attribute__((used)) static int vmwdt_disable(void)
{
 int ret = __diag288(wdt_cancel, 0, "", 0);
 WARN_ON(ret != 0);
 clear_bit(VMWDT_RUNNING, &vmwdt_is_open);
 return ret;
}
