; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ipu/extr_ipu_idmac.c_idmac_alloc_chan_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ipu/extr_ipu_idmac.c_idmac_alloc_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.idmac_channel = type { i64, i32, i8*, i32 }
%struct.idmac = type { i32 }

@IPU_CHANNEL_FREE = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@idmac_interrupt = common dso_local global i32 0, align 4
@IPU_CHANNEL_INITIALIZED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Found channel 0x%x, irq %d\0A\00", align 1
@IDMAC_IC_7 = common dso_local global i64 0, align 8
@ic_eof = common dso_local global i32 0, align 4
@ic_eof_irq = common dso_local global i32 0, align 4
@ic_sof = common dso_local global i32 0, align 4
@ic_sof_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @idmac_alloc_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idmac_alloc_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.idmac_channel*, align 8
  %5 = alloca %struct.idmac*, align 8
  %6 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  %7 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %8 = call %struct.idmac_channel* @to_idmac_chan(%struct.dma_chan* %7)
  store %struct.idmac_channel* %8, %struct.idmac_channel** %4, align 8
  %9 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %10 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.idmac* @to_idmac(i32 %11)
  store %struct.idmac* %12, %struct.idmac** %5, align 8
  %13 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %14 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sgt i32 %15, 1
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %20 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IPU_CHANNEL_FREE, align 8
  %23 = icmp ne i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @WARN_ON(i32 %24)
  %26 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %27 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = load i32, i32* @ENXIO, align 4
  %29 = sub nsw i32 0, %28
  %30 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %31 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %33 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @ipu_irq_map(i32 %34)
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %1
  br label %93

40:                                               ; preds = %1
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %43 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.idmac*, %struct.idmac** %5, align 8
  %45 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %46 = call i32 @ipu_disable_channel(%struct.idmac* %44, %struct.idmac_channel* %45, i32 1)
  %47 = load %struct.idmac*, %struct.idmac** %5, align 8
  %48 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %49 = call i32 @ipu_init_channel(%struct.idmac* %47, %struct.idmac_channel* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  br label %87

53:                                               ; preds = %40
  %54 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %55 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @idmac_interrupt, align 4
  %58 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %59 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %62 = call i32 @request_irq(i32 %56, i32 %57, i32 0, i8* %60, %struct.idmac_channel* %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  br label %83

66:                                               ; preds = %53
  %67 = load i64, i64* @IPU_CHANNEL_INITIALIZED, align 8
  %68 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %69 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %71 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %70, i32 0, i32 3
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %75 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %79 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @dev_dbg(i32* %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %77, i32 %80)
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %2, align 4
  br label %95

83:                                               ; preds = %65
  %84 = load %struct.idmac*, %struct.idmac** %5, align 8
  %85 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %86 = call i32 @ipu_uninit_channel(%struct.idmac* %84, %struct.idmac_channel* %85)
  br label %87

87:                                               ; preds = %83, %52
  %88 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %89 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = call i32 @ipu_irq_unmap(i64 %91)
  br label %93

93:                                               ; preds = %87, %39
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %93, %66
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.idmac_channel* @to_idmac_chan(%struct.dma_chan*) #1

declare dso_local %struct.idmac* @to_idmac(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i8* @ipu_irq_map(i32) #1

declare dso_local i32 @ipu_disable_channel(%struct.idmac*, %struct.idmac_channel*, i32) #1

declare dso_local i32 @ipu_init_channel(%struct.idmac*, %struct.idmac_channel*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.idmac_channel*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i32) #1

declare dso_local i32 @ipu_uninit_channel(%struct.idmac*, %struct.idmac_channel*) #1

declare dso_local i32 @ipu_irq_unmap(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
