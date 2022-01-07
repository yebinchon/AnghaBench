; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_dma.c_dma_rxinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_dma.c_dma_rxinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_pub = type { i32 }
%struct.dma_info = type { i32, i32, i64, i32, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@DMA_RX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_rxinit(%struct.dma_pub* %0) #0 {
  %2 = alloca %struct.dma_pub*, align 8
  %3 = alloca %struct.dma_info*, align 8
  store %struct.dma_pub* %0, %struct.dma_pub** %2, align 8
  %4 = load %struct.dma_pub*, %struct.dma_pub** %2, align 8
  %5 = bitcast %struct.dma_pub* %4 to %struct.dma_info*
  store %struct.dma_info* %5, %struct.dma_info** %3, align 8
  %6 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %7 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %10 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @brcms_dbg_dma(i32 %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %14 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %58

18:                                               ; preds = %1
  %19 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %20 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %19, i32 0, i32 4
  store i64 0, i64* %20, align 8
  %21 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %22 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %21, i32 0, i32 5
  store i64 0, i64* %22, align 8
  %23 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %24 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %27 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = trunc i64 %30 to i32
  %32 = call i32 @memset(i32 %25, i8 signext 0, i32 %31)
  %33 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %34 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %18
  %38 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %39 = load i32, i32* @DMA_RX, align 4
  %40 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %41 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @_dma_ddtable_init(%struct.dma_info* %38, i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %37, %18
  %45 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %46 = call i32 @_dma_rxenable(%struct.dma_info* %45)
  %47 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %48 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %53 = load i32, i32* @DMA_RX, align 4
  %54 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %55 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @_dma_ddtable_init(%struct.dma_info* %52, i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %17, %51, %44
  ret void
}

declare dso_local i32 @brcms_dbg_dma(i32, i8*, i32) #1

declare dso_local i32 @memset(i32, i8 signext, i32) #1

declare dso_local i32 @_dma_ddtable_init(%struct.dma_info*, i32, i32) #1

declare dso_local i32 @_dma_rxenable(%struct.dma_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
