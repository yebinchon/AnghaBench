
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONST_Z ;
 int TAG_Zero ;
 int fld_const (int *,int ,int ) ;

__attribute__((used)) static void fldz(int rc)
{
 fld_const(&CONST_Z, 0, TAG_Zero);
}
