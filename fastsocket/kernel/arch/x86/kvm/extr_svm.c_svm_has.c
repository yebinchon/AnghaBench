
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int svm_features ;

__attribute__((used)) static inline u32 svm_has(u32 feat)
{
 return svm_features & feat;
}
