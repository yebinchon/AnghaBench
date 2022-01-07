
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ilo_hwinfo {int * mmio_vaddr; } ;


 size_t DB_OUT ;
 int iowrite32 (int,int *) ;

__attribute__((used)) static inline void clear_pending_db(struct ilo_hwinfo *hw, int clr)
{
 iowrite32(clr, &hw->mmio_vaddr[DB_OUT]);
}
