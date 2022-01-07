
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int tea6320_volume(int val) { return (val / (65535/(63-12)) + 12) & 0x3f; }
