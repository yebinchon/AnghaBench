
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mpic {int reg_type; int flags; int gregs; } ;
typedef enum mpic_reg_type { ____Placeholder_mpic_reg_type } mpic_reg_type ;


 int GREG_IPI_STRIDE ;
 int GREG_IPI_VECTOR_PRI_0 ;
 int MPIC_BROKEN_IPI ;
 unsigned int MPIC_INFO (int ) ;
 int _mpic_read (int,int *,unsigned int) ;
 int mpic_access_mmio_be ;
 int mpic_access_mmio_le ;

__attribute__((used)) static inline u32 _mpic_ipi_read(struct mpic *mpic, unsigned int ipi)
{
 enum mpic_reg_type type = mpic->reg_type;
 unsigned int offset = MPIC_INFO(GREG_IPI_VECTOR_PRI_0) +
         (ipi * MPIC_INFO(GREG_IPI_STRIDE));

 if ((mpic->flags & MPIC_BROKEN_IPI) && type == mpic_access_mmio_le)
  type = mpic_access_mmio_be;
 return _mpic_read(type, &mpic->gregs, offset);
}
