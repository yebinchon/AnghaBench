; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_txx9dmac.c_txx9dmac_alloc_chan_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_txx9dmac.c_txx9dmac_alloc_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32, %struct.TYPE_2__*, %struct.txx9dmac_slave* }
%struct.TYPE_2__ = type { i64 }
%struct.txx9dmac_slave = type { i32, i64, i64 }
%struct.txx9dmac_chan = type { i32, i32, i32, i32 }
%struct.txx9dmac_desc = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"alloc_chan_resources\0A\00", align 1
@CSR = common dso_local global i32 0, align 4
@TXX9_DMA_CSR_XFACT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"DMA channel not idle?\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@TXX9_DMA_CCR_IMMCHN = common dso_local global i32 0, align 4
@TXX9_DMA_CCR_INTENE = common dso_local global i32 0, align 4
@CCR_LE = common dso_local global i32 0, align 4
@TXX9_DMA_CCR_SMPCHN = common dso_local global i32 0, align 4
@TXX9_DMA_CCR_INTENC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TXX9_DMA_CCR_XFSZ_X8 = common dso_local global i32 0, align 4
@TXX9_DMA_CCR_EXTRQ = common dso_local global i32 0, align 4
@TXX9_DMA_INITIAL_DESC_COUNT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"only allocated %d descriptors\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"alloc_chan_resources allocated %d descriptors\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @txx9dmac_alloc_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txx9dmac_alloc_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.txx9dmac_chan*, align 8
  %5 = alloca %struct.txx9dmac_slave*, align 8
  %6 = alloca %struct.txx9dmac_desc*, align 8
  %7 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  %8 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %9 = call %struct.txx9dmac_chan* @to_txx9dmac_chan(%struct.dma_chan* %8)
  store %struct.txx9dmac_chan* %9, %struct.txx9dmac_chan** %4, align 8
  %10 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %11 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %10, i32 0, i32 2
  %12 = load %struct.txx9dmac_slave*, %struct.txx9dmac_slave** %11, align 8
  store %struct.txx9dmac_slave* %12, %struct.txx9dmac_slave** %5, align 8
  %13 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %14 = call i32 @chan2dev(%struct.dma_chan* %13)
  %15 = call i32 @dev_vdbg(i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %17 = load i32, i32* @CSR, align 4
  %18 = call i32 @channel_readl(%struct.txx9dmac_chan* %16, i32 %17)
  %19 = load i32, i32* @TXX9_DMA_CSR_XFACT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %24 = call i32 @chan2dev(%struct.dma_chan* %23)
  %25 = call i32 (i32, i8*, ...) @dev_dbg(i32 %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %166

28:                                               ; preds = %1
  %29 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %30 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %32 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = load i32, i32* @TXX9_DMA_CCR_IMMCHN, align 4
  %34 = load i32, i32* @TXX9_DMA_CCR_INTENE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @CCR_LE, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %39 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %41 = call i32 @txx9dmac_chan_set_SMPCHN(%struct.txx9dmac_chan* %40)
  %42 = call i32 (...) @txx9_dma_have_SMPCHN()
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %28
  %45 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %46 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @TXX9_DMA_CCR_SMPCHN, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %44, %28
  %52 = load i32, i32* @TXX9_DMA_CCR_INTENC, align 4
  %53 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %54 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %51, %44
  %58 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %59 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %57
  %65 = load %struct.txx9dmac_slave*, %struct.txx9dmac_slave** %5, align 8
  %66 = icmp ne %struct.txx9dmac_slave* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %166

70:                                               ; preds = %64
  %71 = load i32, i32* @TXX9_DMA_CCR_XFSZ_X8, align 4
  %72 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %73 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %116

76:                                               ; preds = %57
  %77 = load %struct.txx9dmac_slave*, %struct.txx9dmac_slave** %5, align 8
  %78 = icmp ne %struct.txx9dmac_slave* %77, null
  br i1 %78, label %79, label %99

79:                                               ; preds = %76
  %80 = load %struct.txx9dmac_slave*, %struct.txx9dmac_slave** %5, align 8
  %81 = getelementptr inbounds %struct.txx9dmac_slave, %struct.txx9dmac_slave* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load %struct.txx9dmac_slave*, %struct.txx9dmac_slave** %5, align 8
  %86 = getelementptr inbounds %struct.txx9dmac_slave, %struct.txx9dmac_slave* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %99, label %89

89:                                               ; preds = %84, %79
  %90 = load %struct.txx9dmac_slave*, %struct.txx9dmac_slave** %5, align 8
  %91 = getelementptr inbounds %struct.txx9dmac_slave, %struct.txx9dmac_slave* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %89
  %95 = load %struct.txx9dmac_slave*, %struct.txx9dmac_slave** %5, align 8
  %96 = getelementptr inbounds %struct.txx9dmac_slave, %struct.txx9dmac_slave* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %94, %84, %76
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %2, align 4
  br label %166

102:                                              ; preds = %94, %89
  %103 = load i32, i32* @TXX9_DMA_CCR_EXTRQ, align 4
  %104 = load %struct.txx9dmac_slave*, %struct.txx9dmac_slave** %5, align 8
  %105 = getelementptr inbounds %struct.txx9dmac_slave, %struct.txx9dmac_slave* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @__ffs(i32 %106)
  %108 = call i32 @TXX9_DMA_CCR_XFSZ(i32 %107)
  %109 = or i32 %103, %108
  %110 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %111 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  %114 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %115 = call i32 @txx9dmac_chan_set_INTENT(%struct.txx9dmac_chan* %114)
  br label %116

116:                                              ; preds = %102, %70
  %117 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %118 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %117, i32 0, i32 3
  %119 = call i32 @spin_lock_bh(i32* %118)
  %120 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %121 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %7, align 4
  br label %123

123:                                              ; preds = %146, %116
  %124 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %125 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @TXX9_DMA_INITIAL_DESC_COUNT, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %157

129:                                              ; preds = %123
  %130 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %131 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %130, i32 0, i32 3
  %132 = call i32 @spin_unlock_bh(i32* %131)
  %133 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %134 = load i32, i32* @GFP_KERNEL, align 4
  %135 = call %struct.txx9dmac_desc* @txx9dmac_desc_alloc(%struct.txx9dmac_chan* %133, i32 %134)
  store %struct.txx9dmac_desc* %135, %struct.txx9dmac_desc** %6, align 8
  %136 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %6, align 8
  %137 = icmp ne %struct.txx9dmac_desc* %136, null
  br i1 %137, label %146, label %138

138:                                              ; preds = %129
  %139 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %140 = call i32 @chan2dev(%struct.dma_chan* %139)
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @dev_info(i32 %140, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %141)
  %143 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %144 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %143, i32 0, i32 3
  %145 = call i32 @spin_lock_bh(i32* %144)
  br label %157

146:                                              ; preds = %129
  %147 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %148 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %6, align 8
  %149 = call i32 @txx9dmac_desc_put(%struct.txx9dmac_chan* %147, %struct.txx9dmac_desc* %148)
  %150 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %151 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %150, i32 0, i32 3
  %152 = call i32 @spin_lock_bh(i32* %151)
  %153 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %154 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 4
  store i32 %156, i32* %7, align 4
  br label %123

157:                                              ; preds = %138, %123
  %158 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %159 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %158, i32 0, i32 3
  %160 = call i32 @spin_unlock_bh(i32* %159)
  %161 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %162 = call i32 @chan2dev(%struct.dma_chan* %161)
  %163 = load i32, i32* %7, align 4
  %164 = call i32 (i32, i8*, ...) @dev_dbg(i32 %162, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* %7, align 4
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %157, %99, %67, %22
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local %struct.txx9dmac_chan* @to_txx9dmac_chan(%struct.dma_chan*) #1

declare dso_local i32 @dev_vdbg(i32, i8*) #1

declare dso_local i32 @chan2dev(%struct.dma_chan*) #1

declare dso_local i32 @channel_readl(%struct.txx9dmac_chan*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @txx9dmac_chan_set_SMPCHN(%struct.txx9dmac_chan*) #1

declare dso_local i32 @txx9_dma_have_SMPCHN(...) #1

declare dso_local i32 @TXX9_DMA_CCR_XFSZ(i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @txx9dmac_chan_set_INTENT(%struct.txx9dmac_chan*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.txx9dmac_desc* @txx9dmac_desc_alloc(%struct.txx9dmac_chan*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @txx9dmac_desc_put(%struct.txx9dmac_chan*, %struct.txx9dmac_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
