
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int send_bit (int ) ;

__attribute__((used)) static void send_ack(void)
{
 send_bit(0);
}
