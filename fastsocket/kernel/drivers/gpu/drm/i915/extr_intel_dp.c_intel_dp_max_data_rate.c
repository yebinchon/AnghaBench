
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
intel_dp_max_data_rate(int max_link_clock, int max_lanes)
{
 return (max_link_clock * max_lanes * 8) / 10;
}
