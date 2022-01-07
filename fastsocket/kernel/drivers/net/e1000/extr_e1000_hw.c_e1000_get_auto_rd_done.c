
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int E1000_SUCCESS ;
 int e_dbg (char*) ;
 int msleep (int) ;

__attribute__((used)) static s32 e1000_get_auto_rd_done(struct e1000_hw *hw)
{
 e_dbg("e1000_get_auto_rd_done");
 msleep(5);
 return E1000_SUCCESS;
}
