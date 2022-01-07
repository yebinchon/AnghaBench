
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct synaptics_i2c {int scan_ms; int scan_rate_param; } ;


 int MSEC_PER_SEC ;

__attribute__((used)) static inline void set_scan_rate(struct synaptics_i2c *touch, int scan_rate)
{
 touch->scan_ms = MSEC_PER_SEC / scan_rate;
 touch->scan_rate_param = scan_rate;
}
