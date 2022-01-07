; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_dma.c_frv_dma_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_dma.c_frv_dma_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@frv_dma_channels = common dso_local global %struct.TYPE_2__* null, align 8
@CSTR = common dso_local global i32 0, align 4
@PIX = common dso_local global i32 0, align 4
@SIX = common dso_local global i32 0, align 4
@BCL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"DMA[%d] cstr=%lx pix=%lx six=%lx bcl=%lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @frv_dma_dump(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @frv_dma_channels, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i32, i32* @CSTR, align 4
  %16 = call i64 @__get_DMAC(i64 %14, i32 %15)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %3, align 8
  %18 = load i32, i32* @PIX, align 4
  %19 = call i64 @__get_DMAC(i64 %17, i32 %18)
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %3, align 8
  %21 = load i32, i32* @SIX, align 4
  %22 = call i64 @__get_DMAC(i64 %20, i32 %21)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load i32, i32* @BCL, align 4
  %25 = call i64 @__get_DMAC(i64 %23, i32 %24)
  store i64 %25, i64* %7, align 8
  %26 = load i32, i32* %2, align 4
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %26, i64 %27, i64 %28, i64 %29, i64 %30)
  ret void
}

declare dso_local i64 @__get_DMAC(i64, i32) #1

declare dso_local i32 @printk(i8*, i32, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
