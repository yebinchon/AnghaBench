
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clock_event_device {int dummy; } ;
typedef enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;


 int A20R_PT_CLOCK_BASE ;





 int SNI_COUNTER0_DIV ;
 int SNI_COUNTER2_DIV ;
 int wmb () ;

__attribute__((used)) static void a20r_set_mode(enum clock_event_mode mode,
                          struct clock_event_device *evt)
{
 switch (mode) {
 case 131:
  *(volatile u8 *)(A20R_PT_CLOCK_BASE + 12) = 0x34;
  wmb();
  *(volatile u8 *)(A20R_PT_CLOCK_BASE + 0) = SNI_COUNTER0_DIV;
  wmb();
  *(volatile u8 *)(A20R_PT_CLOCK_BASE + 0) = SNI_COUNTER0_DIV >> 8;
  wmb();

  *(volatile u8 *)(A20R_PT_CLOCK_BASE + 12) = 0xb4;
  wmb();
  *(volatile u8 *)(A20R_PT_CLOCK_BASE + 8) = SNI_COUNTER2_DIV;
  wmb();
  *(volatile u8 *)(A20R_PT_CLOCK_BASE + 8) = SNI_COUNTER2_DIV >> 8;
  wmb();

                break;
        case 132:
        case 128:
        case 129:
                break;
        case 130:
                break;
        }
}
