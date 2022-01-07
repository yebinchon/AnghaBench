; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam-dma.c_omap24xxcam_sgdma_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam-dma.c_omap24xxcam_sgdma_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap24xxcam_sgdma = type { i32, i32, i32, i32, i32, %struct.sgdma_state* }
%struct.sgdma_state = type { i64, i64, i32, i32, i32, i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@CAMDMA_CSR_MISALIGNED_ERR = common dso_local global i32 0, align 4
@CAMDMA_CSR_SUPERVISOR_ERR = common dso_local global i32 0, align 4
@CAMDMA_CSR_SECURE_ERR = common dso_local global i32 0, align 4
@CAMDMA_CSR_TRANS_ERR = common dso_local global i32 0, align 4
@CAMDMA_CSR_DROP = common dso_local global i32 0, align 4
@NUM_SG_DMA = common dso_local global i32 0, align 4
@omap24xxcam_sgdma_callback = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap24xxcam_sgdma_process(%struct.omap24xxcam_sgdma* %0) #0 {
  %2 = alloca %struct.omap24xxcam_sgdma*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sgdma_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.omap24xxcam_sgdma* %0, %struct.omap24xxcam_sgdma** %2, align 8
  %11 = load i32, i32* @CAMDMA_CSR_MISALIGNED_ERR, align 4
  %12 = load i32, i32* @CAMDMA_CSR_SUPERVISOR_ERR, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @CAMDMA_CSR_SECURE_ERR, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @CAMDMA_CSR_TRANS_ERR, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @CAMDMA_CSR_DROP, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %2, align 8
  %21 = getelementptr inbounds %struct.omap24xxcam_sgdma, %struct.omap24xxcam_sgdma* %20, i32 0, i32 2
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load i32, i32* @NUM_SG_DMA, align 4
  %25 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %2, align 8
  %26 = getelementptr inbounds %struct.omap24xxcam_sgdma, %struct.omap24xxcam_sgdma* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %24, %27
  store i32 %28, i32* %4, align 4
  %29 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %2, align 8
  %30 = getelementptr inbounds %struct.omap24xxcam_sgdma, %struct.omap24xxcam_sgdma* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %2, align 8
  %33 = getelementptr inbounds %struct.omap24xxcam_sgdma, %struct.omap24xxcam_sgdma* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %31, %34
  %36 = load i32, i32* @NUM_SG_DMA, align 4
  %37 = srem i32 %35, %36
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %132, %1
  %39 = load i32, i32* %4, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %139

41:                                               ; preds = %38
  %42 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %2, align 8
  %43 = getelementptr inbounds %struct.omap24xxcam_sgdma, %struct.omap24xxcam_sgdma* %42, i32 0, i32 5
  %44 = load %struct.sgdma_state*, %struct.sgdma_state** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.sgdma_state, %struct.sgdma_state* %44, i64 %46
  store %struct.sgdma_state* %47, %struct.sgdma_state** %6, align 8
  br label %48

48:                                               ; preds = %131, %41
  %49 = load %struct.sgdma_state*, %struct.sgdma_state** %6, align 8
  %50 = getelementptr inbounds %struct.sgdma_state, %struct.sgdma_state* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.sgdma_state*, %struct.sgdma_state** %6, align 8
  %53 = getelementptr inbounds %struct.sgdma_state, %struct.sgdma_state* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %51, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %48
  %57 = load %struct.sgdma_state*, %struct.sgdma_state** %6, align 8
  %58 = getelementptr inbounds %struct.sgdma_state, %struct.sgdma_state* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  br label %64

64:                                               ; preds = %56, %48
  %65 = phi i1 [ false, %48 ], [ %63, %56 ]
  br i1 %65, label %66, label %132

66:                                               ; preds = %64
  %67 = load %struct.sgdma_state*, %struct.sgdma_state** %6, align 8
  %68 = getelementptr inbounds %struct.sgdma_state, %struct.sgdma_state* %67, i32 0, i32 6
  %69 = load %struct.scatterlist*, %struct.scatterlist** %68, align 8
  %70 = load %struct.sgdma_state*, %struct.sgdma_state** %6, align 8
  %71 = getelementptr inbounds %struct.sgdma_state, %struct.sgdma_state* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %69, i64 %72
  store %struct.scatterlist* %73, %struct.scatterlist** %8, align 8
  %74 = load %struct.sgdma_state*, %struct.sgdma_state** %6, align 8
  %75 = getelementptr inbounds %struct.sgdma_state, %struct.sgdma_state* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 1
  %78 = load %struct.sgdma_state*, %struct.sgdma_state** %6, align 8
  %79 = getelementptr inbounds %struct.sgdma_state, %struct.sgdma_state* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %77, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %66
  %83 = load %struct.sgdma_state*, %struct.sgdma_state** %6, align 8
  %84 = getelementptr inbounds %struct.sgdma_state, %struct.sgdma_state* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.sgdma_state*, %struct.sgdma_state** %6, align 8
  %87 = getelementptr inbounds %struct.sgdma_state, %struct.sgdma_state* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = sub i32 %85, %88
  store i32 %89, i32* %9, align 4
  br label %93

90:                                               ; preds = %66
  %91 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %92 = call i32 @sg_dma_len(%struct.scatterlist* %91)
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %90, %82
  %94 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %2, align 8
  %95 = getelementptr inbounds %struct.omap24xxcam_sgdma, %struct.omap24xxcam_sgdma* %94, i32 0, i32 4
  %96 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %97 = call i32 @sg_dma_address(%struct.scatterlist* %96)
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @omap24xxcam_sgdma_callback, align 4
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = inttoptr i64 %101 to i8*
  %103 = call i64 @omap24xxcam_dma_start(i32* %95, i32 %97, i32 %98, i32 %99, i8* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %93
  %106 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %2, align 8
  %107 = getelementptr inbounds %struct.omap24xxcam_sgdma, %struct.omap24xxcam_sgdma* %106, i32 0, i32 2
  %108 = load i64, i64* %3, align 8
  %109 = call i32 @spin_unlock_irqrestore(i32* %107, i64 %108)
  br label %144

110:                                              ; preds = %93
  %111 = load %struct.sgdma_state*, %struct.sgdma_state** %6, align 8
  %112 = getelementptr inbounds %struct.sgdma_state, %struct.sgdma_state* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %112, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.sgdma_state*, %struct.sgdma_state** %6, align 8
  %117 = getelementptr inbounds %struct.sgdma_state, %struct.sgdma_state* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = add i32 %118, %115
  store i32 %119, i32* %117, align 8
  %120 = load %struct.sgdma_state*, %struct.sgdma_state** %6, align 8
  %121 = getelementptr inbounds %struct.sgdma_state, %struct.sgdma_state* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  %124 = load i64, i64* @jiffies, align 8
  %125 = load i64, i64* @HZ, align 8
  %126 = add i64 %124, %125
  store i64 %126, i64* %10, align 8
  %127 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %2, align 8
  %128 = getelementptr inbounds %struct.omap24xxcam_sgdma, %struct.omap24xxcam_sgdma* %127, i32 0, i32 3
  %129 = load i64, i64* %10, align 8
  %130 = call i32 @mod_timer(i32* %128, i64 %129)
  br label %131

131:                                              ; preds = %110
  br label %48

132:                                              ; preds = %64
  %133 = load i32, i32* %4, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %4, align 4
  %135 = load i32, i32* %5, align 4
  %136 = add nsw i32 %135, 1
  %137 = load i32, i32* @NUM_SG_DMA, align 4
  %138 = srem i32 %136, %137
  store i32 %138, i32* %5, align 4
  br label %38

139:                                              ; preds = %38
  %140 = load %struct.omap24xxcam_sgdma*, %struct.omap24xxcam_sgdma** %2, align 8
  %141 = getelementptr inbounds %struct.omap24xxcam_sgdma, %struct.omap24xxcam_sgdma* %140, i32 0, i32 2
  %142 = load i64, i64* %3, align 8
  %143 = call i32 @spin_unlock_irqrestore(i32* %141, i64 %142)
  br label %144

144:                                              ; preds = %139, %105
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i64 @omap24xxcam_dma_start(i32*, i32, i32, i32, i8*) #1

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
