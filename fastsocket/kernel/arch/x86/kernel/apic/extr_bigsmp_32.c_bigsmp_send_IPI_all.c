
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bigsmp_send_IPI_mask (int ,int) ;
 int cpu_online_mask ;

__attribute__((used)) static void bigsmp_send_IPI_all(int vector)
{
 bigsmp_send_IPI_mask(cpu_online_mask, vector);
}
