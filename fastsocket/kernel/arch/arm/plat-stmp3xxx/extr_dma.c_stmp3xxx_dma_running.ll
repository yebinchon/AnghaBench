; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_dma.c_stmp3xxx_dma_running.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_dma.c_stmp3xxx_dma_running.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REGS_APBH_BASE = common dso_local global i64 0, align 8
@HW_APBH_CHn_SEMA = common dso_local global i64 0, align 8
@BM_APBH_CHn_SEMA_PHORE = common dso_local global i32 0, align 4
@REGS_APBX_BASE = common dso_local global i64 0, align 8
@HW_APBX_CHn_SEMA = common dso_local global i64 0, align 8
@BM_APBX_CHn_SEMA_PHORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stmp3xxx_dma_running(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @STMP3XXX_DMA_BUS(i32 %4)
  switch i32 %5, label %32 [
    i32 129, label %6
    i32 128, label %19
  ]

6:                                                ; preds = %1
  %7 = load i64, i64* @REGS_APBH_BASE, align 8
  %8 = load i64, i64* @HW_APBH_CHn_SEMA, align 8
  %9 = add nsw i64 %7, %8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @STMP3XXX_DMA_CHANNEL(i32 %10)
  %12 = mul nsw i32 112, %11
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %9, %13
  %15 = trunc i64 %14 to i32
  %16 = call i32 @__raw_readl(i32 %15)
  %17 = load i32, i32* @BM_APBH_CHn_SEMA_PHORE, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %2, align 4
  br label %34

19:                                               ; preds = %1
  %20 = load i64, i64* @REGS_APBX_BASE, align 8
  %21 = load i64, i64* @HW_APBX_CHn_SEMA, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @STMP3XXX_DMA_CHANNEL(i32 %23)
  %25 = mul nsw i32 112, %24
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %22, %26
  %28 = trunc i64 %27 to i32
  %29 = call i32 @__raw_readl(i32 %28)
  %30 = load i32, i32* @BM_APBX_CHn_SEMA_PHORE, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %2, align 4
  br label %34

32:                                               ; preds = %1
  %33 = call i32 (...) @BUG()
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %19, %6
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @STMP3XXX_DMA_BUS(i32) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @STMP3XXX_DMA_CHANNEL(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
