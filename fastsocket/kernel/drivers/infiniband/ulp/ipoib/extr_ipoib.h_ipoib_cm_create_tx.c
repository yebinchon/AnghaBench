
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_path {int dummy; } ;
struct ipoib_neigh {int dummy; } ;
struct ipoib_cm_tx {int dummy; } ;



__attribute__((used)) static inline
struct ipoib_cm_tx *ipoib_cm_create_tx(struct net_device *dev, struct ipoib_path *path,
        struct ipoib_neigh *neigh)
{
 return ((void*)0);
}
