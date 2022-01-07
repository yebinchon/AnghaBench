
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int F1 (int ,int ,int ) ;
 int F2 (int ,int ,int ) ;
 int F3 (int ,int ,int ) ;

__attribute__((used)) static void QBAR (u32 * block, u8 * Kr, u32 * Km) {
 u32 I;
        block[3] ^= F1(block[0], Kr[3], Km[3]);
        block[0] ^= F3(block[1], Kr[2], Km[2]);
        block[1] ^= F2(block[2], Kr[1], Km[1]);
        block[2] ^= F1(block[3], Kr[0], Km[0]);
}
