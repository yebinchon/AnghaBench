; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_dma.c_dma_txinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_dma.c_dma_txinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_pub = type { i32 }
%struct.dma_info = type { i32, i32, i64, i32, %struct.TYPE_2__, i32, i64, i64, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@D64_XC_XE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@DMA_TX = common dso_local global i32 0, align 4
@DMA_CTRL_PEN = common dso_local global i32 0, align 4
@D64_XC_PD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_txinit(%struct.dma_pub* %0) #0 {
  %2 = alloca %struct.dma_pub*, align 8
  %3 = alloca %struct.dma_info*, align 8
  %4 = alloca i32, align 4
  store %struct.dma_pub* %0, %struct.dma_pub** %2, align 8
  %5 = load %struct.dma_pub*, %struct.dma_pub** %2, align 8
  %6 = bitcast %struct.dma_pub* %5 to %struct.dma_info*
  store %struct.dma_info* %6, %struct.dma_info** %3, align 8
  %7 = load i32, i32* @D64_XC_XE, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %9 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %12 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @brcms_dbg_dma(i32 %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %16 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %85

20:                                               ; preds = %1
  %21 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %22 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %21, i32 0, i32 6
  store i64 0, i64* %22, align 8
  %23 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %24 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %23, i32 0, i32 7
  store i64 0, i64* %24, align 8
  %25 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %26 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  %29 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %30 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %33 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %36 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = call i32 @memset(i32 %34, i8 signext 0, i32 %40)
  %42 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %43 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %20
  %47 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %48 = load i32, i32* @DMA_TX, align 4
  %49 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %50 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @_dma_ddtable_init(%struct.dma_info* %47, i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %46, %20
  %54 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %55 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @DMA_CTRL_PEN, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load i32, i32* @D64_XC_PD, align 4
  %63 = load i32, i32* %4, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %61, %53
  %66 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %67 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @DMA64TXREGOFFS(%struct.dma_info* %69, i32 %70)
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @bcma_set32(i32 %68, i32 %71, i32 %72)
  %74 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %75 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %65
  %79 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %80 = load i32, i32* @DMA_TX, align 4
  %81 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %82 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @_dma_ddtable_init(%struct.dma_info* %79, i32 %80, i32 %83)
  br label %85

85:                                               ; preds = %19, %78, %65
  ret void
}

declare dso_local i32 @brcms_dbg_dma(i32, i8*, i32) #1

declare dso_local i32 @memset(i32, i8 signext, i32) #1

declare dso_local i32 @_dma_ddtable_init(%struct.dma_info*, i32, i32) #1

declare dso_local i32 @bcma_set32(i32, i32, i32) #1

declare dso_local i32 @DMA64TXREGOFFS(%struct.dma_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
