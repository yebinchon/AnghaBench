
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASCEBC (char*,int ) ;
 int EBC_TOUPPER (char*,int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_CMDLEN ;
 int VMWDT_RUNNING ;
 int WARN_ON (int) ;
 int __diag288 (unsigned int,int ,char*,size_t) ;
 int kfree (char*) ;
 char* kmalloc (int ,int ) ;
 int set_bit (int ,int *) ;
 size_t strlcpy (char*,int ,int ) ;
 int vmwdt_cmd ;
 scalar_t__ vmwdt_conceal ;
 int vmwdt_interval ;
 int vmwdt_is_open ;
 unsigned int wdt_conceal ;
 unsigned int wdt_init ;

__attribute__((used)) static int vmwdt_keepalive(void)
{




 static char *ebc_cmd;
 size_t len;
 int ret;
 unsigned int func;

 ebc_cmd = kmalloc(MAX_CMDLEN, GFP_KERNEL);
 if (!ebc_cmd)
  return -ENOMEM;

 len = strlcpy(ebc_cmd, vmwdt_cmd, MAX_CMDLEN);
 ASCEBC(ebc_cmd, MAX_CMDLEN);
 EBC_TOUPPER(ebc_cmd, MAX_CMDLEN);

 func = vmwdt_conceal ? (wdt_init | wdt_conceal) : wdt_init;
 set_bit(VMWDT_RUNNING, &vmwdt_is_open);
 ret = __diag288(func, vmwdt_interval, ebc_cmd, len);
 WARN_ON(ret != 0);
 kfree(ebc_cmd);
 return ret;
}
