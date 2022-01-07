
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_wc {int wc_count; } ;



__attribute__((used)) static inline void
bfa_wc_up(struct bfa_wc *wc)
{
 wc->wc_count++;
}
