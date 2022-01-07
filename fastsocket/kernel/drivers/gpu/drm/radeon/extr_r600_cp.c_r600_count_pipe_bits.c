
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int hweight32 (int ) ;

__attribute__((used)) static int r600_count_pipe_bits(uint32_t val)
{
 return hweight32(val);
}
