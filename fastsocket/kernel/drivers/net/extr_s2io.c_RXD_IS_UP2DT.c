
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RxD_t {int Control_1; int Control_2; } ;


 scalar_t__ GET_RXD_MARKER (int ) ;
 int RXD_OWN_XENA ;
 scalar_t__ THE_RXD_MARK ;

__attribute__((used)) static inline int RXD_IS_UP2DT(struct RxD_t *rxdp)
{
 int ret;

 ret = ((!(rxdp->Control_1 & RXD_OWN_XENA)) &&
        (GET_RXD_MARKER(rxdp->Control_2) != THE_RXD_MARK));

 return ret;
}
