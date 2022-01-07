; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/dma/extr_dma-sh.c_sh_dmac_xfer_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/dma/extr_dma-sh.c_sh_dmac_xfer_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_channel = type { i32, i32, i64, i32, i32 }

@DMA_CONFIGURED = common dso_local global i32 0, align 4
@PVR2_CASCADE_CHAN = common dso_local global i64 0, align 8
@dma_base_addr = common dso_local global i64* null, align 8
@SAR = common dso_local global i64 0, align 8
@DAR = common dso_local global i64 0, align 8
@TCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_channel*)* @sh_dmac_xfer_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_dmac_xfer_dma(%struct.dma_channel* %0) #0 {
  %2 = alloca %struct.dma_channel*, align 8
  store %struct.dma_channel* %0, %struct.dma_channel** %2, align 8
  %3 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %4 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @DMA_CONFIGURED, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %15 = call i32 @sh_dmac_configure_channel(%struct.dma_channel* %14, i32 0)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %18 = call i32 @sh_dmac_disable_dma(%struct.dma_channel* %17)
  %19 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %20 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %16
  %24 = call i64 (...) @mach_is_dreamcast()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %23
  %27 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %28 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PVR2_CASCADE_CHAN, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %26, %16
  %33 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %34 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i64*, i64** @dma_base_addr, align 8
  %37 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %38 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i64, i64* %36, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SAR, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @ctrl_outl(i32 %35, i64 %43)
  br label %45

45:                                               ; preds = %32, %26, %23
  %46 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %47 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %45
  %51 = call i64 (...) @mach_is_dreamcast()
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %50
  %54 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %55 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PVR2_CASCADE_CHAN, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %53, %45
  %60 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %61 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load i64*, i64** @dma_base_addr, align 8
  %64 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %65 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i64, i64* %63, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @DAR, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @ctrl_outl(i32 %62, i64 %70)
  br label %72

72:                                               ; preds = %59, %53, %50
  %73 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %74 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %77 = call i32 @calc_xmit_shift(%struct.dma_channel* %76)
  %78 = ashr i32 %75, %77
  %79 = load i64*, i64** @dma_base_addr, align 8
  %80 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %81 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds i64, i64* %79, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @TCR, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @ctrl_outl(i32 %78, i64 %86)
  %88 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %89 = call i32 @sh_dmac_enable_dma(%struct.dma_channel* %88)
  ret i32 0
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sh_dmac_configure_channel(%struct.dma_channel*, i32) #1

declare dso_local i32 @sh_dmac_disable_dma(%struct.dma_channel*) #1

declare dso_local i64 @mach_is_dreamcast(...) #1

declare dso_local i32 @ctrl_outl(i32, i64) #1

declare dso_local i32 @calc_xmit_shift(%struct.dma_channel*) #1

declare dso_local i32 @sh_dmac_enable_dma(%struct.dma_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
