
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_pd {int dummy; } ;
struct ib_ah_attr {int dummy; } ;
struct ib_ah {int dummy; } ;


 int ENOSYS ;
 struct ib_ah* ERR_PTR (int ) ;

__attribute__((used)) static struct ib_ah *iwch_ah_create(struct ib_pd *pd,
        struct ib_ah_attr *ah_attr)
{
 return ERR_PTR(-ENOSYS);
}
