
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ene_device {int tx_period; int tx_duty_cycle; int transmitter_mask; TYPE_1__* rdev; int learning_mode_enabled; } ;
struct TYPE_2__ {int timeout; } ;


 int US_TO_NS (int) ;
 int learning_mode_force ;

__attribute__((used)) static void ene_setup_default_settings(struct ene_device *dev)
{
 dev->tx_period = 32;
 dev->tx_duty_cycle = 50;
 dev->transmitter_mask = 0x03;
 dev->learning_mode_enabled = learning_mode_force;


 dev->rdev->timeout = US_TO_NS(150000);
}
