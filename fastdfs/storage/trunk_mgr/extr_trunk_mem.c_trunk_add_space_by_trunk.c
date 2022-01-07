
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FDFSTrunkFullInfo ;


 int EEXIST ;
 int trunk_free_space (int const*,int) ;

__attribute__((used)) static int trunk_add_space_by_trunk(const FDFSTrunkFullInfo *pTrunkInfo)
{
 int result;

 result = trunk_free_space(pTrunkInfo, 0);
 if (result == 0 || result == EEXIST)
 {
  return 0;
 }
 else
 {
  return result;
 }
}
