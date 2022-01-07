
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Layer2 {int flag; } ;


 int FLG_ACK_PEND ;
 int FLG_OWN_BUSY ;
 int FLG_REJEXC ;
 int clear_peer_busy (struct Layer2*) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static inline void
clear_exception(struct Layer2 *l2)
{
 test_and_clear_bit(FLG_ACK_PEND, &l2->flag);
 test_and_clear_bit(FLG_REJEXC, &l2->flag);
 test_and_clear_bit(FLG_OWN_BUSY, &l2->flag);
 clear_peer_busy(l2);
}
