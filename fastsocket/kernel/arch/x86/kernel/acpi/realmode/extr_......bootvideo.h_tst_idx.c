
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int in_idx (int ,int ) ;
 int out_idx (int ,int ,int ) ;

__attribute__((used)) static inline u8 tst_idx(u8 v, u16 port, u8 index)
{
 out_idx(port, index, v);
 return in_idx(port, index);
}
