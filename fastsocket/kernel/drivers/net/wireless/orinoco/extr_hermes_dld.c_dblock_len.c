
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dblock {int len; } ;


 int le16_to_cpu (int ) ;

__attribute__((used)) static inline u32
dblock_len(const struct dblock *blk)
{
 return le16_to_cpu(blk->len);
}
