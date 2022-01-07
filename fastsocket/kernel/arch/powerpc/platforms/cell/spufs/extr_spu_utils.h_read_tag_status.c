
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MFC_RdTagStat ;
 int spu_readch (int ) ;

__attribute__((used)) static inline void read_tag_status(void)
{




 spu_readch(MFC_RdTagStat);
}
