
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union event_ring_elem {int dummy; } event_ring_elem ;
struct bnx2x {int dummy; } ;



__attribute__((used)) static inline int bnx2x_iov_eq_sp_event(struct bnx2x *bp,
     union event_ring_elem *elem) {return 1; }
