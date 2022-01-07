
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igb_adapter {int dummy; } ;


 int igb_free_q_vectors (struct igb_adapter*) ;
 int igb_reset_interrupt_capability (struct igb_adapter*) ;

__attribute__((used)) static void igb_clear_interrupt_scheme(struct igb_adapter *adapter)
{
 igb_free_q_vectors(adapter);
 igb_reset_interrupt_capability(adapter);
}
