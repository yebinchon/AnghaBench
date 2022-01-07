
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AOE_MAJOR ;
 int DEVICE_NAME ;
 int TKILL ;
 int aoeblk_exit () ;
 int aoechr_exit () ;
 int aoecmd_exit () ;
 int aoedev_exit () ;
 int aoenet_exit () ;
 int discover_timer (int ) ;
 int unregister_blkdev (int ,int ) ;

__attribute__((used)) static void
aoe_exit(void)
{
 discover_timer(TKILL);

 aoenet_exit();
 unregister_blkdev(AOE_MAJOR, DEVICE_NAME);
 aoecmd_exit();
 aoechr_exit();
 aoedev_exit();
 aoeblk_exit();
}
