; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-stmp37xx/extr_stmp37xx.c_stmp3xxx_arch_dma_reset_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-stmp37xx/extr_stmp37xx.c_stmp3xxx_arch_dma_reset_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BP_APBH_CTRL0_RESET_CHANNEL = common dso_local global i32 0, align 4
@REGS_APBH_BASE = common dso_local global i64 0, align 8
@HW_APBH_CTRL0 = common dso_local global i64 0, align 8
@BP_APBX_CTRL0_RESET_CHANNEL = common dso_local global i32 0, align 4
@REGS_APBX_BASE = common dso_local global i64 0, align 8
@HW_APBX_CTRL0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stmp3xxx_arch_dma_reset_channel(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @STMP3XXX_DMA_CHANNEL(i32 %4)
  %6 = shl i32 1, %5
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @STMP3XXX_DMA_BUS(i32 %7)
  switch i32 %8, label %51 [
    i32 129, label %9
    i32 128, label %30
  ]

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @BP_APBH_CTRL0_RESET_CHANNEL, align 4
  %12 = shl i32 %10, %11
  %13 = load i64, i64* @REGS_APBH_BASE, align 8
  %14 = load i64, i64* @HW_APBH_CTRL0, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @stmp3xxx_setl(i32 %12, i64 %15)
  br label %17

17:                                               ; preds = %27, %9
  %18 = load i64, i64* @REGS_APBH_BASE, align 8
  %19 = load i64, i64* @HW_APBH_CTRL0, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @__raw_readl(i64 %20)
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @BP_APBH_CTRL0_RESET_CHANNEL, align 4
  %24 = shl i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = call i32 (...) @cpu_relax()
  br label %17

29:                                               ; preds = %17
  br label %51

30:                                               ; preds = %1
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @BP_APBX_CTRL0_RESET_CHANNEL, align 4
  %33 = shl i32 %31, %32
  %34 = load i64, i64* @REGS_APBX_BASE, align 8
  %35 = load i64, i64* @HW_APBX_CTRL0, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @stmp3xxx_setl(i32 %33, i64 %36)
  br label %38

38:                                               ; preds = %48, %30
  %39 = load i64, i64* @REGS_APBX_BASE, align 8
  %40 = load i64, i64* @HW_APBX_CTRL0, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @__raw_readl(i64 %41)
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @BP_APBX_CTRL0_RESET_CHANNEL, align 4
  %45 = shl i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = call i32 (...) @cpu_relax()
  br label %38

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %1, %50, %29
  ret void
}

declare dso_local i32 @STMP3XXX_DMA_CHANNEL(i32) #1

declare dso_local i32 @STMP3XXX_DMA_BUS(i32) #1

declare dso_local i32 @stmp3xxx_setl(i32, i64) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
