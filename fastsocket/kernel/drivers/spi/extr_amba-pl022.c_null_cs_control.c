
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int pr_debug (char*,int ) ;

__attribute__((used)) static void null_cs_control(u32 command)
{
 pr_debug("pl022: dummy chip select control, CS=0x%x\n", command);
}
