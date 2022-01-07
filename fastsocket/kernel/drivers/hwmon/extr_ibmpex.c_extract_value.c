
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int __be16 ;


 int be16_to_cpup (int *) ;

__attribute__((used)) static inline u16 extract_value(const char *data, int offset)
{
 return be16_to_cpup((__be16 *)&data[offset]);
}
