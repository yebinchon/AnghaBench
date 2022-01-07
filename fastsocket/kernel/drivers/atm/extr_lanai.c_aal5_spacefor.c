
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int aal5_spacefor(int space)
{
 int cells = space / 48;
 return cells * 48;
}
