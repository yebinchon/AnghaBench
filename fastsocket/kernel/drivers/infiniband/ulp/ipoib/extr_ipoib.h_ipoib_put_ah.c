
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipoib_ah {int ref; } ;


 int ipoib_free_ah ;
 int kref_put (int *,int ) ;

__attribute__((used)) static inline void ipoib_put_ah(struct ipoib_ah *ah)
{
 kref_put(&ah->ref, ipoib_free_ah);
}
