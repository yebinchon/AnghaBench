
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spinaphore {int serve; } ;


 int ia64_fetchadd (int,int *,int ) ;
 int rel ;

__attribute__((used)) static inline void up_spin(struct spinaphore *ss)
{
 ia64_fetchadd(1, &ss->serve, rel);
}
