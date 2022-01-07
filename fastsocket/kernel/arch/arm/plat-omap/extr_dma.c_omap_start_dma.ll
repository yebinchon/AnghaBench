; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_dma.c_omap_start_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_dma.c_omap_start_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@dma_chan = common dso_local global %struct.TYPE_2__* null, align 8
@OMAP_DMA4_LOGICAL_DMA_CH_COUNT = common dso_local global i32 0, align 4
@OMAP2430_REV_ES1_0 = common dso_local global i64 0, align 8
@OMAP_DMA_CCR_EN = common dso_local global i32 0, align 4
@OMAP_DMA_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_start_dma(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %8 = call i32 (...) @omap_dma_in_1510_mode()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %63, label %10

10:                                               ; preds = %1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dma_chan, align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %63

18:                                               ; preds = %10
  %19 = load i32, i32* @OMAP_DMA4_LOGICAL_DMA_CH_COUNT, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %6, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %7, align 8
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  store i8 1, i8* %25, align 1
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @enable_lnk(i32 %26)
  %28 = trunc i64 %20 to i32
  %29 = call i32 @memset(i8* %22, i32 0, i32 %28)
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dma_chan, align 8
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %58, %18
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dma_chan, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %22, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  br label %61

49:                                               ; preds = %36
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %22, i64 %51
  store i8 1, i8* %52, align 1
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @enable_lnk(i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @omap_enable_channel_irq(i32 %55)
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %49
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, -1
  br i1 %60, label %36, label %61

61:                                               ; preds = %58, %48
  %62 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %62)
  br label %79

63:                                               ; preds = %10, %1
  %64 = call i64 (...) @cpu_is_omap242x()
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %63
  %67 = call i64 (...) @cpu_is_omap243x()
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = call i64 (...) @omap_type()
  %71 = load i64, i64* @OMAP2430_REV_ES1_0, align 8
  %72 = icmp sle i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %69, %63
  %74 = load i32, i32* %2, align 4
  %75 = load i32, i32* %2, align 4
  %76 = call i32 @CLNK_CTRL(i32 %75)
  %77 = call i32 @dma_write(i32 %74, i32 %76)
  br label %78

78:                                               ; preds = %73, %69, %66
  br label %79

79:                                               ; preds = %78, %61
  %80 = load i32, i32* %2, align 4
  %81 = call i32 @omap_enable_channel_irq(i32 %80)
  %82 = load i32, i32* %2, align 4
  %83 = call i32 @CCR(i32 %82)
  %84 = call i32 @dma_read(i32 %83)
  store i32 %84, i32* %3, align 4
  %85 = call i64 (...) @cpu_is_omap24xx()
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %79
  %88 = load i32, i32* @OMAP_DMA_CCR_EN, align 4
  %89 = load i32, i32* %3, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %87, %79
  %92 = load i32, i32* @OMAP_DMA_CCR_EN, align 4
  %93 = load i32, i32* %3, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %3, align 4
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* %2, align 4
  %97 = call i32 @CCR(i32 %96)
  %98 = call i32 @dma_write(i32 %95, i32 %97)
  %99 = load i32, i32* @OMAP_DMA_ACTIVE, align 4
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dma_chan, align 8
  %101 = load i32, i32* %2, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %99
  store i32 %106, i32* %104, align 4
  ret void
}

declare dso_local i32 @omap_dma_in_1510_mode(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @enable_lnk(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @omap_enable_channel_irq(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @cpu_is_omap242x(...) #1

declare dso_local i64 @cpu_is_omap243x(...) #1

declare dso_local i64 @omap_type(...) #1

declare dso_local i32 @dma_write(i32, i32) #1

declare dso_local i32 @CLNK_CTRL(i32) #1

declare dso_local i32 @dma_read(i32) #1

declare dso_local i32 @CCR(i32) #1

declare dso_local i64 @cpu_is_omap24xx(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
