; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_dma.c_dma_txreset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_dma.c_dma_txreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_pub = type { i32 }
%struct.dma_info = type { i64, i32 }

@control = common dso_local global i32 0, align 4
@D64_XC_SE = common dso_local global i32 0, align 4
@status0 = common dso_local global i32 0, align 4
@D64_XS0_XS_MASK = common dso_local global i32 0, align 4
@D64_XS0_XS_DISABLED = common dso_local global i32 0, align 4
@D64_XS0_XS_IDLE = common dso_local global i32 0, align 4
@D64_XS0_XS_STOPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dma_txreset(%struct.dma_pub* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_pub*, align 8
  %4 = alloca %struct.dma_info*, align 8
  %5 = alloca i32, align 4
  store %struct.dma_pub* %0, %struct.dma_pub** %3, align 8
  %6 = load %struct.dma_pub*, %struct.dma_pub** %3, align 8
  %7 = bitcast %struct.dma_pub* %6 to %struct.dma_info*
  store %struct.dma_info* %7, %struct.dma_info** %4, align 8
  %8 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %9 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %70

13:                                               ; preds = %1
  %14 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %15 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %18 = load i32, i32* @control, align 4
  %19 = call i32 @DMA64TXREGOFFS(%struct.dma_info* %17, i32 %18)
  %20 = load i32, i32* @D64_XC_SE, align 4
  %21 = call i32 @bcma_write32(i32 %16, i32 %19, i32 %20)
  %22 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %23 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %26 = load i32, i32* @status0, align 4
  %27 = call i32 @DMA64TXREGOFFS(%struct.dma_info* %25, i32 %26)
  %28 = call i32 @bcma_read32(i32 %24, i32 %27)
  %29 = load i32, i32* @D64_XS0_XS_MASK, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @D64_XS0_XS_DISABLED, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %13
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @D64_XS0_XS_IDLE, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @D64_XS0_XS_STOPPED, align 4
  %40 = icmp ne i32 %38, %39
  br label %41

41:                                               ; preds = %37, %33, %13
  %42 = phi i1 [ false, %33 ], [ false, %13 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @SPINWAIT(i32 %43, i32 10000)
  %45 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %46 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %49 = load i32, i32* @control, align 4
  %50 = call i32 @DMA64TXREGOFFS(%struct.dma_info* %48, i32 %49)
  %51 = call i32 @bcma_write32(i32 %47, i32 %50, i32 0)
  %52 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %53 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %56 = load i32, i32* @status0, align 4
  %57 = call i32 @DMA64TXREGOFFS(%struct.dma_info* %55, i32 %56)
  %58 = call i32 @bcma_read32(i32 %54, i32 %57)
  %59 = load i32, i32* @D64_XS0_XS_MASK, align 4
  %60 = and i32 %58, %59
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* @D64_XS0_XS_DISABLED, align 4
  %62 = icmp ne i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @SPINWAIT(i32 %63, i32 10000)
  %65 = call i32 @udelay(i32 300)
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @D64_XS0_XS_DISABLED, align 4
  %68 = icmp eq i32 %66, %67
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %41, %12
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @bcma_write32(i32, i32, i32) #1

declare dso_local i32 @DMA64TXREGOFFS(%struct.dma_info*, i32) #1

declare dso_local i32 @SPINWAIT(i32, i32) #1

declare dso_local i32 @bcma_read32(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
