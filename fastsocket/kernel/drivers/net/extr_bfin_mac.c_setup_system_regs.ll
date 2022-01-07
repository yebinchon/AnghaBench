; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bfin_mac.c_setup_system_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bfin_mac.c_setup_system_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@RXDWA = common dso_local global i16 0, align 2
@RSTC = common dso_local global i32 0, align 4
@CROLL = common dso_local global i32 0, align 4
@RXCKS = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_system_regs(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i16, align 2
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = call zeroext i16 (...) @bfin_read_EMAC_SYSCTL()
  store i16 %4, i16* %3, align 2
  %5 = load i16, i16* @RXDWA, align 2
  %6 = zext i16 %5 to i32
  %7 = load i16, i16* %3, align 2
  %8 = zext i16 %7 to i32
  %9 = or i32 %8, %6
  %10 = trunc i32 %9 to i16
  store i16 %10, i16* %3, align 2
  %11 = load i16, i16* %3, align 2
  %12 = call i32 @bfin_write_EMAC_SYSCTL(i16 zeroext %11)
  %13 = load i32, i32* @RSTC, align 4
  %14 = load i32, i32* @CROLL, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @bfin_write_EMAC_MMC_CTL(i32 %15)
  %17 = call i32 @bfin_write_DMA2_X_COUNT(i32 0)
  %18 = call i32 @bfin_write_DMA2_X_MODIFY(i32 4)
  %19 = call i32 @bfin_write_DMA2_Y_COUNT(i32 0)
  %20 = call i32 @bfin_write_DMA2_Y_MODIFY(i32 0)
  %21 = call i32 @bfin_write_DMA1_X_COUNT(i32 0)
  %22 = call i32 @bfin_write_DMA1_X_MODIFY(i32 4)
  %23 = call i32 @bfin_write_DMA1_Y_COUNT(i32 0)
  %24 = call i32 @bfin_write_DMA1_Y_MODIFY(i32 0)
  ret void
}

declare dso_local zeroext i16 @bfin_read_EMAC_SYSCTL(...) #1

declare dso_local i32 @bfin_write_EMAC_SYSCTL(i16 zeroext) #1

declare dso_local i32 @bfin_write_EMAC_MMC_CTL(i32) #1

declare dso_local i32 @bfin_write_DMA2_X_COUNT(i32) #1

declare dso_local i32 @bfin_write_DMA2_X_MODIFY(i32) #1

declare dso_local i32 @bfin_write_DMA2_Y_COUNT(i32) #1

declare dso_local i32 @bfin_write_DMA2_Y_MODIFY(i32) #1

declare dso_local i32 @bfin_write_DMA1_X_COUNT(i32) #1

declare dso_local i32 @bfin_write_DMA1_X_MODIFY(i32) #1

declare dso_local i32 @bfin_write_DMA1_Y_COUNT(i32) #1

declare dso_local i32 @bfin_write_DMA1_Y_MODIFY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
