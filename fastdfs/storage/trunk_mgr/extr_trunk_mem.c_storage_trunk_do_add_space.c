
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FDFSTrunkFullInfo ;


 scalar_t__ g_trunk_init_check_occupying ;
 scalar_t__ storage_trunk_is_space_occupied (int const*) ;
 int trunk_add_space_by_trunk (int const*) ;

__attribute__((used)) static int storage_trunk_do_add_space(const FDFSTrunkFullInfo *pTrunkInfo)
{
 if (g_trunk_init_check_occupying)
 {
  if (storage_trunk_is_space_occupied(pTrunkInfo))
  {
   return 0;
  }
 }
 return trunk_add_space_by_trunk(pTrunkInfo);
}
