; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_mac100.c_mac100_dma_diagnostic_fr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_mac100.c_mac100_dma_diagnostic_fr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_extra_stats = type { i32, i32 }
%struct.net_device_stats = type { i32, i32 }

@DMA_MISSED_FRAME_CTR = common dso_local global i64 0, align 8
@DMA_MISSED_FRAME_OVE = common dso_local global i32 0, align 4
@DMA_MISSED_FRAME_OVE_CNTR = common dso_local global i32 0, align 4
@DMA_MISSED_FRAME_OVE_M = common dso_local global i32 0, align 4
@DMA_MISSED_FRAME_M_CNTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.stmmac_extra_stats*, i64)* @mac100_dma_diagnostic_fr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mac100_dma_diagnostic_fr(i8* %0, %struct.stmmac_extra_stats* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stmmac_extra_stats*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.net_device_stats*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.stmmac_extra_stats* %1, %struct.stmmac_extra_stats** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.net_device_stats*
  store %struct.net_device_stats* %12, %struct.net_device_stats** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @DMA_MISSED_FRAME_CTR, align 8
  %15 = add i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %78

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @DMA_MISSED_FRAME_OVE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %27 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 2048
  store i32 %29, i32* %27, align 4
  %30 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %5, align 8
  %31 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 2048
  store i32 %33, i32* %31, align 4
  br label %49

34:                                               ; preds = %20
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @DMA_MISSED_FRAME_OVE_CNTR, align 4
  %37 = and i32 %35, %36
  %38 = ashr i32 %37, 17
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %41 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %5, align 8
  %46 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %34, %25
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @DMA_MISSED_FRAME_OVE_M, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %56 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 65535
  store i32 %58, i32* %56, align 4
  %59 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %5, align 8
  %60 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 65535
  store i32 %62, i32* %60, align 4
  br label %77

63:                                               ; preds = %49
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @DMA_MISSED_FRAME_M_CNTR, align 4
  %66 = and i32 %64, %65
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %69 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %5, align 8
  %74 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %63, %54
  br label %78

78:                                               ; preds = %77, %3
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
