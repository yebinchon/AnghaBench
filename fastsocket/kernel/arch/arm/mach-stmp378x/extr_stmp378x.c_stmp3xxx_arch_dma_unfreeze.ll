; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-stmp378x/extr_stmp378x.c_stmp3xxx_arch_dma_unfreeze.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-stmp378x/extr_stmp378x.c_stmp3xxx_arch_dma_unfreeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REGS_APBH_BASE = common dso_local global i64 0, align 8
@HW_APBH_CTRL0 = common dso_local global i64 0, align 8
@REGS_APBX_BASE = common dso_local global i64 0, align 8
@HW_APBX_CHANNEL_CTRL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stmp3xxx_arch_dma_unfreeze(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @STMP3XXX_DMA_CHANNEL(i32 %5)
  %7 = shl i32 1, %6
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = shl i32 1, %8
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @STMP3XXX_DMA_BUS(i32 %10)
  switch i32 %11, label %24 [
    i32 129, label %12
    i32 128, label %18
  ]

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = load i64, i64* @REGS_APBH_BASE, align 8
  %15 = load i64, i64* @HW_APBH_CTRL0, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @stmp3xxx_clearl(i32 %13, i64 %16)
  br label %24

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = load i64, i64* @REGS_APBX_BASE, align 8
  %21 = load i64, i64* @HW_APBX_CHANNEL_CTRL, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @stmp3xxx_clearl(i32 %19, i64 %22)
  br label %24

24:                                               ; preds = %1, %18, %12
  ret void
}

declare dso_local i32 @STMP3XXX_DMA_CHANNEL(i32) #1

declare dso_local i32 @STMP3XXX_DMA_BUS(i32) #1

declare dso_local i32 @stmp3xxx_clearl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
