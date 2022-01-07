
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct layer2 {int flag; } ;


 int FLG_ACK_PEND ;
 int FLG_OWN_BUSY ;
 int FLG_REJEXC ;
 int clear_peer_busy (struct layer2*) ;
 int test_and_clear_bit (int ,int *) ;

inline void
clear_exception(struct layer2 *l2)
{
 test_and_clear_bit(FLG_ACK_PEND, &l2->flag);
 test_and_clear_bit(FLG_REJEXC, &l2->flag);
 test_and_clear_bit(FLG_OWN_BUSY, &l2->flag);
 clear_peer_busy(l2);
}
