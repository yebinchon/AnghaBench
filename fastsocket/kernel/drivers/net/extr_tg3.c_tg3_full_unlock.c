
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int lock; } ;


 int spin_unlock_bh (int *) ;

__attribute__((used)) static inline void tg3_full_unlock(struct tg3 *tp)
{
 spin_unlock_bh(&tp->lock);
}
