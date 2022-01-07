; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_dw_dmac.c_dwc_alloc_chan_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_dw_dmac.c_dwc_alloc_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.dma_chan = type { i32, %struct.dw_dma_slave*, i32 }
%struct.dw_dma_slave = type { i64, i64, i64 }
%struct.dw_dma_chan = type { i32, i32, i32, i32 }
%struct.dw_dma = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.dw_desc = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"alloc_chan_resources\0A\00", align 1
@CH_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"DMA channel not idle?\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@DWC_CFGH_FIFO_MODE = common dso_local global i64 0, align 8
@CFG_LO = common dso_local global i32 0, align 4
@CFG_HI = common dso_local global i32 0, align 4
@NR_DESCS_PER_CHANNEL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"only allocated %d descriptors\0A\00", align 1
@dwc_tx_submit = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@MASK = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"alloc_chan_resources allocated %d descriptors\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @dwc_alloc_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc_alloc_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.dw_dma_chan*, align 8
  %5 = alloca %struct.dw_dma*, align 8
  %6 = alloca %struct.dw_desc*, align 8
  %7 = alloca %struct.dw_dma_slave*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  %11 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %12 = call %struct.dw_dma_chan* @to_dw_dma_chan(%struct.dma_chan* %11)
  store %struct.dw_dma_chan* %12, %struct.dw_dma_chan** %4, align 8
  %13 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %14 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.dw_dma* @to_dw_dma(i32 %15)
  store %struct.dw_dma* %16, %struct.dw_dma** %5, align 8
  %17 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %18 = call i32 @chan2dev(%struct.dma_chan* %17)
  %19 = call i32 @dev_vdbg(i32 %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.dw_dma*, %struct.dw_dma** %5, align 8
  %21 = load i32, i32* @CH_EN, align 4
  %22 = call i32 @dma_readl(%struct.dw_dma* %20, i32 %21)
  %23 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %4, align 8
  %24 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %1
  %29 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %30 = call i32 @chan2dev(%struct.dma_chan* %29)
  %31 = call i32 (i32, i8*, ...) @dev_dbg(i32 %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %168

34:                                               ; preds = %1
  %35 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %36 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %4, align 8
  %38 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  %39 = load i64, i64* @DWC_CFGH_FIFO_MODE, align 8
  store i64 %39, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %40 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %41 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %40, i32 0, i32 1
  %42 = load %struct.dw_dma_slave*, %struct.dw_dma_slave** %41, align 8
  store %struct.dw_dma_slave* %42, %struct.dw_dma_slave** %7, align 8
  %43 = load %struct.dw_dma_slave*, %struct.dw_dma_slave** %7, align 8
  %44 = icmp ne %struct.dw_dma_slave* %43, null
  br i1 %44, label %45, label %69

45:                                               ; preds = %34
  %46 = load %struct.dw_dma_slave*, %struct.dw_dma_slave** %7, align 8
  %47 = getelementptr inbounds %struct.dw_dma_slave, %struct.dw_dma_slave* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load %struct.dw_dma_slave*, %struct.dw_dma_slave** %7, align 8
  %52 = getelementptr inbounds %struct.dw_dma_slave, %struct.dw_dma_slave* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.dw_dma*, %struct.dw_dma** %5, align 8
  %55 = getelementptr inbounds %struct.dw_dma, %struct.dw_dma* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %53, %57
  br label %59

59:                                               ; preds = %50, %45
  %60 = phi i1 [ true, %45 ], [ %58, %50 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @BUG_ON(i32 %61)
  %63 = load %struct.dw_dma_slave*, %struct.dw_dma_slave** %7, align 8
  %64 = getelementptr inbounds %struct.dw_dma_slave, %struct.dw_dma_slave* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %9, align 8
  %66 = load %struct.dw_dma_slave*, %struct.dw_dma_slave** %7, align 8
  %67 = getelementptr inbounds %struct.dw_dma_slave, %struct.dw_dma_slave* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %10, align 8
  br label %69

69:                                               ; preds = %59, %34
  %70 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %4, align 8
  %71 = load i32, i32* @CFG_LO, align 4
  %72 = load i64, i64* %10, align 8
  %73 = call i32 @channel_writel(%struct.dw_dma_chan* %70, i32 %71, i64 %72)
  %74 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %4, align 8
  %75 = load i32, i32* @CFG_HI, align 4
  %76 = load i64, i64* %9, align 8
  %77 = call i32 @channel_writel(%struct.dw_dma_chan* %74, i32 %75, i64 %76)
  %78 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %4, align 8
  %79 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %78, i32 0, i32 3
  %80 = call i32 @spin_lock_bh(i32* %79)
  %81 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %4, align 8
  %82 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %106, %69
  %85 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %4, align 8
  %86 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @NR_DESCS_PER_CHANNEL, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %141

90:                                               ; preds = %84
  %91 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %4, align 8
  %92 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %91, i32 0, i32 3
  %93 = call i32 @spin_unlock_bh(i32* %92)
  %94 = load i32, i32* @GFP_KERNEL, align 4
  %95 = call %struct.dw_desc* @kzalloc(i32 20, i32 %94)
  store %struct.dw_desc* %95, %struct.dw_desc** %6, align 8
  %96 = load %struct.dw_desc*, %struct.dw_desc** %6, align 8
  %97 = icmp ne %struct.dw_desc* %96, null
  br i1 %97, label %106, label %98

98:                                               ; preds = %90
  %99 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %100 = call i32 @chan2dev(%struct.dma_chan* %99)
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @dev_info(i32 %100, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %4, align 8
  %104 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %103, i32 0, i32 3
  %105 = call i32 @spin_lock_bh(i32* %104)
  br label %141

106:                                              ; preds = %90
  %107 = load %struct.dw_desc*, %struct.dw_desc** %6, align 8
  %108 = getelementptr inbounds %struct.dw_desc, %struct.dw_desc* %107, i32 0, i32 2
  %109 = call i32 @INIT_LIST_HEAD(i32* %108)
  %110 = load %struct.dw_desc*, %struct.dw_desc** %6, align 8
  %111 = getelementptr inbounds %struct.dw_desc, %struct.dw_desc* %110, i32 0, i32 1
  %112 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %113 = call i32 @dma_async_tx_descriptor_init(%struct.TYPE_5__* %111, %struct.dma_chan* %112)
  %114 = load i32, i32* @dwc_tx_submit, align 4
  %115 = load %struct.dw_desc*, %struct.dw_desc** %6, align 8
  %116 = getelementptr inbounds %struct.dw_desc, %struct.dw_desc* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 2
  store i32 %114, i32* %117, align 4
  %118 = load i32, i32* @DMA_CTRL_ACK, align 4
  %119 = load %struct.dw_desc*, %struct.dw_desc** %6, align 8
  %120 = getelementptr inbounds %struct.dw_desc, %struct.dw_desc* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  store i32 %118, i32* %121, align 4
  %122 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %123 = call i32 @chan2parent(%struct.dma_chan* %122)
  %124 = load %struct.dw_desc*, %struct.dw_desc** %6, align 8
  %125 = getelementptr inbounds %struct.dw_desc, %struct.dw_desc* %124, i32 0, i32 0
  %126 = load i32, i32* @DMA_TO_DEVICE, align 4
  %127 = call i32 @dma_map_single(i32 %123, i32* %125, i32 4, i32 %126)
  %128 = load %struct.dw_desc*, %struct.dw_desc** %6, align 8
  %129 = getelementptr inbounds %struct.dw_desc, %struct.dw_desc* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  store i32 %127, i32* %130, align 4
  %131 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %4, align 8
  %132 = load %struct.dw_desc*, %struct.dw_desc** %6, align 8
  %133 = call i32 @dwc_desc_put(%struct.dw_dma_chan* %131, %struct.dw_desc* %132)
  %134 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %4, align 8
  %135 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %134, i32 0, i32 3
  %136 = call i32 @spin_lock_bh(i32* %135)
  %137 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %4, align 8
  %138 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  store i32 %140, i32* %8, align 4
  br label %84

141:                                              ; preds = %98, %84
  %142 = load %struct.dw_dma*, %struct.dw_dma** %5, align 8
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @MASK, i32 0, i32 2), align 4
  %144 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %4, align 8
  %145 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @channel_set_bit(%struct.dw_dma* %142, i32 %143, i32 %146)
  %148 = load %struct.dw_dma*, %struct.dw_dma** %5, align 8
  %149 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @MASK, i32 0, i32 1), align 4
  %150 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %4, align 8
  %151 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @channel_set_bit(%struct.dw_dma* %148, i32 %149, i32 %152)
  %154 = load %struct.dw_dma*, %struct.dw_dma** %5, align 8
  %155 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @MASK, i32 0, i32 0), align 4
  %156 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %4, align 8
  %157 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @channel_set_bit(%struct.dw_dma* %154, i32 %155, i32 %158)
  %160 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %4, align 8
  %161 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %160, i32 0, i32 3
  %162 = call i32 @spin_unlock_bh(i32* %161)
  %163 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %164 = call i32 @chan2dev(%struct.dma_chan* %163)
  %165 = load i32, i32* %8, align 4
  %166 = call i32 (i32, i8*, ...) @dev_dbg(i32 %164, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %165)
  %167 = load i32, i32* %8, align 4
  store i32 %167, i32* %2, align 4
  br label %168

168:                                              ; preds = %141, %28
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local %struct.dw_dma_chan* @to_dw_dma_chan(%struct.dma_chan*) #1

declare dso_local %struct.dw_dma* @to_dw_dma(i32) #1

declare dso_local i32 @dev_vdbg(i32, i8*) #1

declare dso_local i32 @chan2dev(%struct.dma_chan*) #1

declare dso_local i32 @dma_readl(%struct.dw_dma*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @channel_writel(%struct.dw_dma_chan*, i32, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.dw_desc* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dma_async_tx_descriptor_init(%struct.TYPE_5__*, %struct.dma_chan*) #1

declare dso_local i32 @dma_map_single(i32, i32*, i32, i32) #1

declare dso_local i32 @chan2parent(%struct.dma_chan*) #1

declare dso_local i32 @dwc_desc_put(%struct.dw_dma_chan*, %struct.dw_desc*) #1

declare dso_local i32 @channel_set_bit(%struct.dw_dma*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
