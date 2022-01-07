
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MFC_WrTagUpdate ;
 int spu_writech (int ,unsigned int) ;

__attribute__((used)) static inline void set_tag_update(void)
{
 unsigned int update_any = 1;





 spu_writech(MFC_WrTagUpdate, update_any);
}
