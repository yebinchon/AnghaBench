; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-stmp37xx/extr_stmp37xx.c_stmp3xxx_arch_dma_freeze.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-stmp37xx/extr_stmp37xx.c_stmp3xxx_arch_dma_freeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REGS_APBH_BASE = common dso_local global i64 0, align 8
@HW_APBH_CTRL0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stmp3xxx_arch_dma_freeze(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @STMP3XXX_DMA_CHANNEL(i32 %4)
  %6 = shl i32 1, %5
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @STMP3XXX_DMA_BUS(i32 %7)
  switch i32 %8, label %23 [
    i32 129, label %9
    i32 128, label %16
  ]

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = shl i32 1, %10
  %12 = load i64, i64* @REGS_APBH_BASE, align 8
  %13 = load i64, i64* @HW_APBH_CTRL0, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @stmp3xxx_setl(i32 %11, i64 %14)
  br label %23

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = shl i32 1, %17
  %19 = load i64, i64* @REGS_APBH_BASE, align 8
  %20 = load i64, i64* @HW_APBH_CTRL0, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @stmp3xxx_setl(i32 %18, i64 %21)
  br label %23

23:                                               ; preds = %1, %16, %9
  ret void
}

declare dso_local i32 @STMP3XXX_DMA_CHANNEL(i32) #1

declare dso_local i32 @STMP3XXX_DMA_BUS(i32) #1

declare dso_local i32 @stmp3xxx_setl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
