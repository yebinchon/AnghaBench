
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t3cdev {int dummy; } ;
struct adapter {int open_device_map; } ;


 int OFFLOAD_DEVMAP_BIT ;
 struct adapter* tdev2adap (struct t3cdev*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline int offload_activated(struct t3cdev *tdev)
{
 const struct adapter *adapter = tdev2adap(tdev);

 return test_bit(OFFLOAD_DEVMAP_BIT, &adapter->open_device_map);
}
