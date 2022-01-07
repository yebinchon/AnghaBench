; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_dma.c_dma_txenq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_dma.c_dma_txenq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_info = type { i32, i64, i32, %struct.sk_buff**, i32, i32 }
%struct.sk_buff = type { i8*, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@D64_CTRL1_SOF = common dso_local global i32 0, align 4
@D64_CTRL1_IOC = common dso_local global i32 0, align 4
@D64_CTRL1_EOF = common dso_local global i32 0, align 4
@D64_CTRL1_EOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_info*, %struct.sk_buff*)* @dma_txenq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_txenq(%struct.dma_info* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.dma_info*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dma_info* %0, %struct.dma_info** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %11 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @nexttxd(%struct.dma_info* %13, i32 %14)
  %16 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %17 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %77

24:                                               ; preds = %2
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %5, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %6, align 4
  %31 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %32 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @DMA_TO_DEVICE, align 4
  %37 = call i32 @dma_map_single(i32 %33, i8* %34, i32 %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* @D64_CTRL1_SOF, align 4
  %39 = load i32, i32* @D64_CTRL1_IOC, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @D64_CTRL1_EOF, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %45 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, 1
  %48 = icmp eq i32 %43, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %24
  %50 = load i32, i32* @D64_CTRL1_EOT, align 4
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %49, %24
  %54 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %55 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %56 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @dma64_dd_upd(%struct.dma_info* %54, i32 %57, i32 %58, i32 %59, i32* %8, i32 %60)
  %62 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i64 @nexttxd(%struct.dma_info* %62, i32 %63)
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %7, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %68 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %67, i32 0, i32 3
  %69 = load %struct.sk_buff**, %struct.sk_buff*** %68, align 8
  %70 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i64 @prevtxd(%struct.dma_info* %70, i32 %71)
  %73 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %69, i64 %72
  store %struct.sk_buff* %66, %struct.sk_buff** %73, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %76 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %53, %23
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @nexttxd(%struct.dma_info*, i32) #1

declare dso_local i32 @dma_map_single(i32, i8*, i32, i32) #1

declare dso_local i32 @dma64_dd_upd(%struct.dma_info*, i32, i32, i32, i32*, i32) #1

declare dso_local i64 @prevtxd(%struct.dma_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
