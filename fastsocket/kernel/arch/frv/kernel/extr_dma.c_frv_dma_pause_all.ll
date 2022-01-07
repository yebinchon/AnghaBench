; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_dma.c_frv_dma_pause_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_dma.c_frv_dma_pause_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frv_dma_channel = type { i32, i64 }

@frv_dma_channels_lock = common dso_local global i32 0, align 4
@FRV_DMA_NCHANS = common dso_local global i32 0, align 4
@frv_dma_channels = common dso_local global %struct.frv_dma_channel* null, align 8
@FRV_DMA_FLAGS_INUSE = common dso_local global i32 0, align 4
@CCTR = common dso_local global i32 0, align 4
@DMAC_CCTRx_ACT = common dso_local global i64 0, align 8
@CSTR = common dso_local global i32 0, align 4
@DMAC_CSTRx_BUSY = common dso_local global i64 0, align 8
@DMAC_CSTRx_FED = common dso_local global i64 0, align 8
@FRV_DMA_FLAGS_PAUSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @frv_dma_pause_all() #0 {
  %1 = alloca %struct.frv_dma_channel*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = call i32 @write_lock(i32* @frv_dma_channels_lock)
  %7 = load i32, i32* @FRV_DMA_NCHANS, align 4
  %8 = sub nsw i32 %7, 1
  store i32 %8, i32* %5, align 4
  br label %9

9:                                                ; preds = %68, %0
  %10 = load i32, i32* %5, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %71

12:                                               ; preds = %9
  %13 = load %struct.frv_dma_channel*, %struct.frv_dma_channel** @frv_dma_channels, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.frv_dma_channel, %struct.frv_dma_channel* %13, i64 %15
  store %struct.frv_dma_channel* %16, %struct.frv_dma_channel** %1, align 8
  %17 = load %struct.frv_dma_channel*, %struct.frv_dma_channel** %1, align 8
  %18 = getelementptr inbounds %struct.frv_dma_channel, %struct.frv_dma_channel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @FRV_DMA_FLAGS_INUSE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %12
  br label %68

24:                                               ; preds = %12
  %25 = load %struct.frv_dma_channel*, %struct.frv_dma_channel** %1, align 8
  %26 = getelementptr inbounds %struct.frv_dma_channel, %struct.frv_dma_channel* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %2, align 8
  %28 = load i64, i64* %2, align 8
  %29 = load i32, i32* @CCTR, align 4
  %30 = call i64 @__get_DMAC(i64 %28, i32 %29)
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* @DMAC_CCTRx_ACT, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %67

35:                                               ; preds = %24
  %36 = load i64, i64* @DMAC_CCTRx_ACT, align 8
  %37 = xor i64 %36, -1
  %38 = load i64, i64* %4, align 8
  %39 = and i64 %38, %37
  store i64 %39, i64* %4, align 8
  %40 = load i64, i64* %2, align 8
  %41 = load i32, i32* @CCTR, align 4
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @__set_DMAC(i64 %40, i32 %41, i64 %42)
  br label %44

44:                                               ; preds = %48, %35
  %45 = load i64, i64* %2, align 8
  %46 = load i32, i32* @CSTR, align 4
  %47 = call i64 @__get_DMAC(i64 %45, i32 %46)
  store i64 %47, i64* %3, align 8
  br label %48

48:                                               ; preds = %44
  %49 = load i64, i64* %3, align 8
  %50 = load i64, i64* @DMAC_CSTRx_BUSY, align 8
  %51 = and i64 %49, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %44, label %53

53:                                               ; preds = %48
  %54 = load i64, i64* %3, align 8
  %55 = load i64, i64* @DMAC_CSTRx_FED, align 8
  %56 = and i64 %54, %55
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i32, i32* @FRV_DMA_FLAGS_PAUSED, align 4
  %60 = load %struct.frv_dma_channel*, %struct.frv_dma_channel** %1, align 8
  %61 = getelementptr inbounds %struct.frv_dma_channel, %struct.frv_dma_channel* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %58, %53
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @frv_clear_dma_inprogress(i32 %65)
  br label %67

67:                                               ; preds = %64, %24
  br label %68

68:                                               ; preds = %67, %23
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %5, align 4
  br label %9

71:                                               ; preds = %9
  ret void
}

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i64 @__get_DMAC(i64, i32) #1

declare dso_local i32 @__set_DMAC(i64, i32, i64) #1

declare dso_local i32 @frv_clear_dma_inprogress(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
