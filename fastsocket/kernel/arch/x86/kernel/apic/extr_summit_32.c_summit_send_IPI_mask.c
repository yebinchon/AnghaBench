
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;


 int default_send_IPI_mask_sequence_logical (struct cpumask const*,int) ;

__attribute__((used)) static inline void summit_send_IPI_mask(const struct cpumask *mask, int vector)
{
 default_send_IPI_mask_sequence_logical(mask, vector);
}
