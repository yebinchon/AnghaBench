; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_fsldma.c_fsl_dma_chan_do_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_fsldma.c_fsl_dma_chan_do_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_dma_chan = type { i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"event: channel %d, stat = 0x%x\0A\00", align 1
@FSL_DMA_SR_CB = common dso_local global i32 0, align 4
@FSL_DMA_SR_CH = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@FSL_DMA_SR_TE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Transfer Error!\0A\00", align 1
@FSL_DMA_SR_PE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"event: Programming Error INT\0A\00", align 1
@FSL_DMA_SR_EOSI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"event: End-of-segments INT\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"event: clndar 0x%llx, nlndar 0x%llx\0A\00", align 1
@FSL_DMA_SR_EOCDI = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"event: End-of-Chain link INT\0A\00", align 1
@FSL_DMA_SR_EOLNI = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"event: End-of-link INT\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"event: unhandled sr 0x%02x\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"event: Exit\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fsl_dma_chan_do_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_dma_chan_do_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fsl_dma_chan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.fsl_dma_chan*
  store %struct.fsl_dma_chan* %11, %struct.fsl_dma_chan** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %6, align 8
  %13 = call i32 @get_sr(%struct.fsl_dma_chan* %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %6, align 8
  %15 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %6, align 8
  %18 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 (i32, i8*, ...) @dev_dbg(i32 %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @set_sr(%struct.fsl_dma_chan* %22, i32 %23)
  %25 = load i32, i32* @FSL_DMA_SR_CB, align 4
  %26 = load i32, i32* @FSL_DMA_SR_CH, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* @IRQ_NONE, align 4
  store i32 %34, i32* %3, align 4
  br label %144

35:                                               ; preds = %2
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @FSL_DMA_SR_TE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %6, align 8
  %42 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %40, %35
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @FSL_DMA_SR_PE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %45
  %51 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %6, align 8
  %52 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i32, i8*, ...) @dev_dbg(i32 %53, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %55 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %6, align 8
  %56 = call i64 @get_bcr(%struct.fsl_dma_chan* %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %59

59:                                               ; preds = %58, %50
  %60 = load i32, i32* @FSL_DMA_SR_PE, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %7, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %59, %45
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @FSL_DMA_SR_EOSI, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %64
  %70 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %6, align 8
  %71 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i32, i8*, ...) @dev_dbg(i32 %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %74 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %6, align 8
  %75 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %6, align 8
  %78 = call i64 @get_cdar(%struct.fsl_dma_chan* %77)
  %79 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %6, align 8
  %80 = call i64 @get_ndar(%struct.fsl_dma_chan* %79)
  %81 = call i32 (i32, i8*, ...) @dev_dbg(i32 %76, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i64 %78, i64 %80)
  %82 = load i32, i32* @FSL_DMA_SR_EOSI, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %7, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %86

86:                                               ; preds = %69, %64
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @FSL_DMA_SR_EOCDI, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %86
  %92 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %6, align 8
  %93 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i32, i8*, ...) @dev_dbg(i32 %94, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %96 = load i32, i32* @FSL_DMA_SR_EOCDI, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %7, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %100

100:                                              ; preds = %91, %86
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @FSL_DMA_SR_EOLNI, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %100
  %106 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %6, align 8
  %107 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i32, i8*, ...) @dev_dbg(i32 %108, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %110 = load i32, i32* @FSL_DMA_SR_EOLNI, align 4
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %7, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %7, align 4
  store i32 1, i32* %9, align 4
  br label %114

114:                                              ; preds = %105, %100
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %6, align 8
  %119 = call i32 @fsl_dma_update_completed_cookie(%struct.fsl_dma_chan* %118)
  br label %120

120:                                              ; preds = %117, %114
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %6, align 8
  %125 = call i32 @fsl_chan_xfer_ld_queue(%struct.fsl_dma_chan* %124)
  br label %126

126:                                              ; preds = %123, %120
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %126
  %130 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %6, align 8
  %131 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %7, align 4
  %134 = call i32 (i32, i8*, ...) @dev_dbg(i32 %132, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %133)
  br label %135

135:                                              ; preds = %129, %126
  %136 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %6, align 8
  %137 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (i32, i8*, ...) @dev_dbg(i32 %138, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %140 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %6, align 8
  %141 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %140, i32 0, i32 0
  %142 = call i32 @tasklet_schedule(i32* %141)
  %143 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %135, %33
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @get_sr(%struct.fsl_dma_chan*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @set_sr(%struct.fsl_dma_chan*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @get_bcr(%struct.fsl_dma_chan*) #1

declare dso_local i64 @get_cdar(%struct.fsl_dma_chan*) #1

declare dso_local i64 @get_ndar(%struct.fsl_dma_chan*) #1

declare dso_local i32 @fsl_dma_update_completed_cookie(%struct.fsl_dma_chan*) #1

declare dso_local i32 @fsl_chan_xfer_ld_queue(%struct.fsl_dma_chan*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
