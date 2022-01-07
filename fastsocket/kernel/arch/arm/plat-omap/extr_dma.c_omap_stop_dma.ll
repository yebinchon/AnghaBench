; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_dma.c_omap_stop_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_dma.c_omap_stop_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@OMAP_DMA_CCR_EN = common dso_local global i32 0, align 4
@dma_chan = common dso_local global %struct.TYPE_2__* null, align 8
@OMAP_DMA4_LOGICAL_DMA_CH_COUNT = common dso_local global i32 0, align 4
@OMAP_DMA_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_stop_dma(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %8 = call i64 (...) @cpu_class_is_omap1()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @CICR(i32 %11)
  %13 = call i32 @dma_write(i32 0, i32 %12)
  br label %14

14:                                               ; preds = %10, %1
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @CCR(i32 %15)
  %17 = call i32 @dma_read(i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @OMAP_DMA_CCR_EN, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @CCR(i32 %23)
  %25 = call i32 @dma_write(i32 %22, i32 %24)
  %26 = call i32 (...) @omap_dma_in_1510_mode()
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %69, label %28

28:                                               ; preds = %14
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dma_chan, align 8
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, -1
  br i1 %35, label %36, label %69

36:                                               ; preds = %28
  %37 = load i32, i32* %2, align 4
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* @OMAP_DMA4_LOGICAL_DMA_CH_COUNT, align 4
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %6, align 8
  %41 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %7, align 8
  %42 = trunc i64 %39 to i32
  %43 = call i32 @memset(i8* %41, i32 0, i32 %42)
  br label %44

44:                                               ; preds = %64, %36
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %41, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %67

51:                                               ; preds = %44
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %41, i64 %53
  store i8 1, i8* %54, align 1
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @disable_lnk(i32 %55)
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dma_chan, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %51
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, -1
  br i1 %66, label %44, label %67

67:                                               ; preds = %64, %50
  %68 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %68)
  br label %69

69:                                               ; preds = %67, %28, %14
  %70 = load i32, i32* @OMAP_DMA_ACTIVE, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dma_chan, align 8
  %73 = load i32, i32* %2, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %71
  store i32 %78, i32* %76, align 4
  ret void
}

declare dso_local i64 @cpu_class_is_omap1(...) #1

declare dso_local i32 @dma_write(i32, i32) #1

declare dso_local i32 @CICR(i32) #1

declare dso_local i32 @dma_read(i32) #1

declare dso_local i32 @CCR(i32) #1

declare dso_local i32 @omap_dma_in_1510_mode(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @disable_lnk(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
