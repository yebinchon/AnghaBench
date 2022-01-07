
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_link_state {scalar_t__ up; scalar_t__ fd; scalar_t__ fc; scalar_t__ speed; } ;



__attribute__((used)) static inline bool efx_link_state_equal(const struct efx_link_state *left,
     const struct efx_link_state *right)
{
 return left->up == right->up && left->fd == right->fd &&
  left->fc == right->fc && left->speed == right->speed;
}
