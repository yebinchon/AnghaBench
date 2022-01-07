
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hubreg_t ;
typedef int cnodeid_t ;


 int COMPACT_TO_NASID_NODEID (int ) ;
 int NASID_TO_COARSEREG_SHFT ;
 int NASID_TO_FINEREG_SHFT ;
 scalar_t__ fine_mode ;

__attribute__((used)) static hubreg_t get_region(cnodeid_t cnode)
{
 if (fine_mode)
  return COMPACT_TO_NASID_NODEID(cnode) >> NASID_TO_FINEREG_SHFT;
 else
  return COMPACT_TO_NASID_NODEID(cnode) >> NASID_TO_COARSEREG_SHFT;
}
