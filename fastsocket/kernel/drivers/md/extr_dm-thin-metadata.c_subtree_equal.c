
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v2_le ;
typedef int v1_le ;
typedef scalar_t__ __le64 ;


 int memcpy (scalar_t__*,void const*,int) ;

__attribute__((used)) static int subtree_equal(void *context, const void *value1_le, const void *value2_le)
{
 __le64 v1_le, v2_le;
 memcpy(&v1_le, value1_le, sizeof(v1_le));
 memcpy(&v2_le, value2_le, sizeof(v2_le));

 return v1_le == v2_le;
}
