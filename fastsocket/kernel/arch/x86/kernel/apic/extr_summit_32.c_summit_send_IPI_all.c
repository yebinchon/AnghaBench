
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_online_mask ;
 int summit_send_IPI_mask (int ,int) ;

__attribute__((used)) static void summit_send_IPI_all(int vector)
{
 summit_send_IPI_mask(cpu_online_mask, vector);
}
