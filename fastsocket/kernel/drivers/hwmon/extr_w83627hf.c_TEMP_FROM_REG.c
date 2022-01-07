
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int s8 ;



__attribute__((used)) static int TEMP_FROM_REG(u8 reg)
{
        return (s8)reg * 1000;
}
