
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONST_LN2 ;
 scalar_t__ DOWN_OR_CHOP (int) ;
 int TAG_Valid ;
 int fld_const (int *,int,int ) ;

__attribute__((used)) static void fldln2(int rc)
{
 fld_const(&CONST_LN2, DOWN_OR_CHOP(rc) ? -1 : 0, TAG_Valid);
}
