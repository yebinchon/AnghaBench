; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_dma.c_frv_dma_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_dma.c_frv_dma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@frv_dma_channels = common dso_local global %struct.TYPE_2__* null, align 8
@SBA = common dso_local global i32 0, align 4
@DBA = common dso_local global i32 0, align 4
@PIX = common dso_local global i32 0, align 4
@SIX = common dso_local global i32 0, align 4
@BCL = common dso_local global i32 0, align 4
@CSTR = common dso_local global i32 0, align 4
@CCTR = common dso_local global i32 0, align 4
@DMAC_CCTRx_ACT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @frv_dma_start(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @frv_dma_channels, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %13, align 8
  %20 = load i64, i64* %13, align 8
  %21 = load i32, i32* @SBA, align 4
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @___set_DMAC(i64 %20, i32 %21, i64 %22)
  %24 = load i64, i64* %13, align 8
  %25 = load i32, i32* @DBA, align 4
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @___set_DMAC(i64 %24, i32 %25, i64 %26)
  %28 = load i64, i64* %13, align 8
  %29 = load i32, i32* @PIX, align 4
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @___set_DMAC(i64 %28, i32 %29, i64 %30)
  %32 = load i64, i64* %13, align 8
  %33 = load i32, i32* @SIX, align 4
  %34 = load i64, i64* %11, align 8
  %35 = call i32 @___set_DMAC(i64 %32, i32 %33, i64 %34)
  %36 = load i64, i64* %13, align 8
  %37 = load i32, i32* @BCL, align 4
  %38 = load i64, i64* %12, align 8
  %39 = call i32 @___set_DMAC(i64 %36, i32 %37, i64 %38)
  %40 = load i64, i64* %13, align 8
  %41 = load i32, i32* @CSTR, align 4
  %42 = call i32 @___set_DMAC(i64 %40, i32 %41, i64 0)
  %43 = call i32 (...) @mb()
  %44 = load i64, i64* %13, align 8
  %45 = load i32, i32* @CCTR, align 4
  %46 = load i64, i64* %13, align 8
  %47 = load i32, i32* @CCTR, align 4
  %48 = call i32 @__get_DMAC(i64 %46, i32 %47)
  %49 = load i32, i32* @DMAC_CCTRx_ACT, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @__set_DMAC(i64 %44, i32 %45, i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @frv_set_dma_inprogress(i32 %52)
  ret void
}

declare dso_local i32 @___set_DMAC(i64, i32, i64) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @__set_DMAC(i64, i32, i32) #1

declare dso_local i32 @__get_DMAC(i64, i32) #1

declare dso_local i32 @frv_set_dma_inprogress(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
