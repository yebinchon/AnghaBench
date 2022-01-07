; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_initialize_dma_rcv_ctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_initialize_dma_rcv_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_rcv_ctx = type { i32, i32, i32*, i32*, i64, i32, i32, i32, i32, i32, i64, i64, %struct.TYPE_2__**, i64 }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }
%struct.ti_ohci = type { i32 }

@DMA_CTL_INPUT_MORE = common dso_local global i32 0, align 4
@DMA_CTL_UPDATE = common dso_local global i32 0, align 4
@DMA_CTL_BRANCH = common dso_local global i32 0, align 4
@DMA_CTL_IRQ = common dso_local global i32 0, align 4
@DMA_CTX_ISO = common dso_local global i64 0, align 8
@OHCI1394_IRMultiChanMaskHiClear = common dso_local global i32 0, align 4
@OHCI1394_IRMultiChanMaskLoClear = common dso_local global i32 0, align 4
@OHCI1394_IsoRecvIntMaskSet = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Receive DMA ctx=%d initialized\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_rcv_ctx*, i32)* @initialize_dma_rcv_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_dma_rcv_ctx(%struct.dma_rcv_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.dma_rcv_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ti_ohci*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dma_rcv_ctx* %0, %struct.dma_rcv_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %8, i32 0, i32 13
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ti_ohci*
  store %struct.ti_ohci* %11, %struct.ti_ohci** %5, align 8
  %12 = load %struct.ti_ohci*, %struct.ti_ohci** %5, align 8
  %13 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %13, i32 0, i32 9
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @ohci1394_stop_context(%struct.ti_ohci* %12, i32 %15, i32* null)
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %121, %2
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %124

23:                                               ; preds = %17
  %24 = load i32, i32* @DMA_CTL_INPUT_MORE, align 4
  %25 = load i32, i32* @DMA_CTL_UPDATE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @DMA_CTL_BRANCH, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load i32, i32* @DMA_CTL_IRQ, align 4
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %31, %23
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %38 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %36, %39
  %41 = call i8* @cpu_to_le32(i32 %40)
  %42 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %42, i32 0, i32 12
  %44 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %44, i64 %46
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  store i8* %41, i8** %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  %52 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %53 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %35
  %57 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %58 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, -16
  %66 = or i32 %65, 1
  %67 = call i8* @cpu_to_le32(i32 %66)
  %68 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %69 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %68, i32 0, i32 12
  %70 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %70, i64 %72
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  store i8* %67, i8** %75, align 8
  br label %92

76:                                               ; preds = %35
  %77 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %78 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, -16
  %83 = call i8* @cpu_to_le32(i32 %82)
  %84 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %85 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %84, i32 0, i32 12
  %86 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %86, i64 %88
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  store i8* %83, i8** %91, align 8
  br label %92

92:                                               ; preds = %76, %56
  %93 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %94 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @cpu_to_le32(i32 %99)
  %101 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %102 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %101, i32 0, i32 12
  %103 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %103, i64 %105
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  store i8* %100, i8** %108, align 8
  %109 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %110 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @cpu_to_le32(i32 %111)
  %113 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %114 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %113, i32 0, i32 12
  %115 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %115, i64 %117
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  store i8* %112, i8** %120, align 8
  br label %121

121:                                              ; preds = %92
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %6, align 4
  br label %17

124:                                              ; preds = %17
  %125 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %126 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %125, i32 0, i32 11
  store i64 0, i64* %126, align 8
  %127 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %128 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %127, i32 0, i32 10
  store i64 0, i64* %128, align 8
  %129 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %130 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @DMA_CTX_ISO, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %163

134:                                              ; preds = %124
  %135 = load %struct.ti_ohci*, %struct.ti_ohci** %5, align 8
  %136 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %137 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %136, i32 0, i32 9
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @reg_write(%struct.ti_ohci* %135, i32 %138, i32 -1)
  %140 = load %struct.ti_ohci*, %struct.ti_ohci** %5, align 8
  %141 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %142 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @reg_write(%struct.ti_ohci* %140, i32 %143, i32 -805306368)
  %145 = load %struct.ti_ohci*, %struct.ti_ohci** %5, align 8
  %146 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %147 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %146, i32 0, i32 8
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @reg_write(%struct.ti_ohci* %145, i32 %148, i32 -268435456)
  %150 = load %struct.ti_ohci*, %struct.ti_ohci** %5, align 8
  %151 = load i32, i32* @OHCI1394_IRMultiChanMaskHiClear, align 4
  %152 = call i32 @reg_write(%struct.ti_ohci* %150, i32 %151, i32 -1)
  %153 = load %struct.ti_ohci*, %struct.ti_ohci** %5, align 8
  %154 = load i32, i32* @OHCI1394_IRMultiChanMaskLoClear, align 4
  %155 = call i32 @reg_write(%struct.ti_ohci* %153, i32 %154, i32 -1)
  %156 = load %struct.ti_ohci*, %struct.ti_ohci** %5, align 8
  %157 = load i32, i32* @OHCI1394_IsoRecvIntMaskSet, align 4
  %158 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %159 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 8
  %161 = shl i32 1, %160
  %162 = call i32 @reg_write(%struct.ti_ohci* %156, i32 %157, i32 %161)
  br label %163

163:                                              ; preds = %134, %124
  %164 = load %struct.ti_ohci*, %struct.ti_ohci** %5, align 8
  %165 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %166 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %165, i32 0, i32 7
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %169 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %168, i32 0, i32 2
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %172, 1
  %174 = call i32 @reg_write(%struct.ti_ohci* %164, i32 %167, i32 %173)
  %175 = load %struct.ti_ohci*, %struct.ti_ohci** %5, align 8
  %176 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %177 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %176, i32 0, i32 6
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @reg_write(%struct.ti_ohci* %175, i32 %178, i32 32768)
  %180 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %181 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %180, i32 0, i32 5
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @DBGMSG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %182)
  ret void
}

declare dso_local i32 @ohci1394_stop_context(%struct.ti_ohci*, i32, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @reg_write(%struct.ti_ohci*, i32, i32) #1

declare dso_local i32 @DBGMSG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
