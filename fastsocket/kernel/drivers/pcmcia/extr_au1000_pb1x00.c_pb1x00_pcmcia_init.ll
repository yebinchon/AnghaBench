; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_au1000_pb1x00.c_pb1x00_pcmcia_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_au1000_pb1x00.c_pb1x00_pcmcia_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_init = type { i32 }

@PCMCIA_BOARD_REG = common dso_local global i32 0, align 4
@PC_DEASSERT_RST = common dso_local global i32 0, align 4
@PC_DRV_EN = common dso_local global i32 0, align 4
@PCMCIA_NUM_SOCKS = common dso_local global i32 0, align 4
@PB1000_MDR = common dso_local global i32 0, align 4
@PB1000_PCR = common dso_local global i32 0, align 4
@PCR_SLOT_0_RST = common dso_local global i32 0, align 4
@PCR_SLOT_1_RST = common dso_local global i32 0, align 4
@VCC_HIZ = common dso_local global i32 0, align 4
@VPP_HIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_init*)* @pb1x00_pcmcia_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pb1x00_pcmcia_init(%struct.pcmcia_init* %0) #0 {
  %2 = alloca %struct.pcmcia_init*, align 8
  %3 = alloca i32, align 4
  store %struct.pcmcia_init* %0, %struct.pcmcia_init** %2, align 8
  %4 = load i32, i32* @PCMCIA_BOARD_REG, align 4
  %5 = call i32 @au_readw(i32 %4)
  %6 = and i32 %5, -16
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @PC_DEASSERT_RST, align 4
  %8 = load i32, i32* @PC_DRV_EN, align 4
  %9 = or i32 %7, %8
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @PCMCIA_BOARD_REG, align 4
  %15 = call i32 @au_writew(i32 %13, i32 %14)
  %16 = call i32 @au_sync_delay(i32 500)
  %17 = load i32, i32* @PCMCIA_NUM_SOCKS, align 4
  ret i32 %17
}

declare dso_local i32 @au_readw(i32) #1

declare dso_local i32 @au_writew(i32, i32) #1

declare dso_local i32 @au_sync_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
