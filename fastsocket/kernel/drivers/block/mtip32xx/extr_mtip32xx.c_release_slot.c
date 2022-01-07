
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtip_port {int allocated; } ;


 int clear_bit (int,int ) ;
 int smp_mb__after_clear_bit () ;
 int smp_mb__before_clear_bit () ;

__attribute__((used)) static inline void release_slot(struct mtip_port *port, int tag)
{
 smp_mb__before_clear_bit();
 clear_bit(tag, port->allocated);
 smp_mb__after_clear_bit();
}
