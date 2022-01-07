; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-stmp378x/extr_stmp378x.c_stmp3xxx_arch_dma_is_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-stmp378x/extr_stmp378x.c_stmp3xxx_arch_dma_is_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REGS_APBH_BASE = common dso_local global i64 0, align 8
@HW_APBH_CTRL1 = common dso_local global i64 0, align 8
@REGS_APBX_BASE = common dso_local global i64 0, align 8
@HW_APBX_CTRL1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stmp3xxx_arch_dma_is_interrupt(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @STMP3XXX_DMA_BUS(i32 %4)
  switch i32 %5, label %24 [
    i32 129, label %6
    i32 128, label %15
  ]

6:                                                ; preds = %1
  %7 = load i64, i64* @REGS_APBH_BASE, align 8
  %8 = load i64, i64* @HW_APBH_CTRL1, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @__raw_readl(i64 %9)
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @STMP3XXX_DMA_CHANNEL(i32 %11)
  %13 = shl i32 1, %12
  %14 = and i32 %10, %13
  store i32 %14, i32* %3, align 4
  br label %24

15:                                               ; preds = %1
  %16 = load i64, i64* @REGS_APBX_BASE, align 8
  %17 = load i64, i64* @HW_APBX_CTRL1, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @__raw_readl(i64 %18)
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @STMP3XXX_DMA_CHANNEL(i32 %20)
  %22 = shl i32 1, %21
  %23 = and i32 %19, %22
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %1, %15, %6
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @STMP3XXX_DMA_BUS(i32) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @STMP3XXX_DMA_CHANNEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
