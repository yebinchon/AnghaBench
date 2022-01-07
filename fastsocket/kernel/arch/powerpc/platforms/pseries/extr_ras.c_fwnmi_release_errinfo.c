
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printk (char*,int) ;
 int rtas_call (int ,int ,int,int *) ;
 int rtas_token (char*) ;

__attribute__((used)) static void fwnmi_release_errinfo(void)
{
 int ret = rtas_call(rtas_token("ibm,nmi-interlock"), 0, 1, ((void*)0));
 if (ret != 0)
  printk("FWNMI: nmi-interlock failed: %d\n", ret);
}
