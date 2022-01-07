; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/csp/dmac/extr_dmacHw_extra.c_dmacHw_setControlDescriptor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/csp/dmac/extr_dmacHw_extra.c_dmacHw_setControlDescriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__, i64, i64, i64 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_10__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__* }

@dmacHw_DESC_FREE = common dso_local global i32 0, align 4
@dmacHw_FLOW_CONTROL_DMA = common dso_local global i64 0, align 8
@dmacHw_SRC_ADDRESS_UPDATE_MODE_INC = common dso_local global i64 0, align 8
@dmacHw_DST_ADDRESS_UPDATE_MODE_INC = common dso_local global i64 0, align 8
@dmacHw_SRC_TRANSACTION_WIDTH_32 = common dso_local global i64 0, align 8
@dmacHw_SRC_BURST_WIDTH_0 = common dso_local global i64 0, align 8
@dmacHw_DST_BURST_WIDTH_0 = common dso_local global i64 0, align 8
@dmacHw_REG_CTL_INT_EN = common dso_local global i64 0, align 8
@dmacHw_REG_CTL_TTFC_PM_PERI = common dso_local global i64 0, align 8
@dmacHw_REG_CTL_TTFC_MP_PERI = common dso_local global i64 0, align 8
@dmacHw_REG_CTL_BLOCK_TS_MASK = common dso_local global i32 0, align 4
@dmacHw_DESC_INIT = common dso_local global %struct.TYPE_11__* null, align 8
@pHead = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmacHw_setControlDescriptor(%struct.TYPE_10__* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call %struct.TYPE_9__* @dmacHw_GET_DESC_RING(i8* %12)
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %10, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %172

17:                                               ; preds = %4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @dmacHw_DESC_FREE, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  store i32 -1, i32* %5, align 4
  br label %172

28:                                               ; preds = %17
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  store i64 %29, i64* %33, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 2
  %38 = ptrtoint i64* %37 to i64
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 3
  store i64 %38, i64* %42, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  store i64 %43, i64* %47, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @dmacHw_FLOW_CONTROL_DMA, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %86

53:                                               ; preds = %28
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @dmacHw_SRC_ADDRESS_UPDATE_MODE_INC, align 8
  %58 = or i64 %56, %57
  %59 = load i64, i64* @dmacHw_DST_ADDRESS_UPDATE_MODE_INC, align 8
  %60 = or i64 %58, %59
  %61 = load i64, i64* @dmacHw_SRC_TRANSACTION_WIDTH_32, align 8
  %62 = or i64 %60, %61
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = or i64 %62, %65
  %67 = load i64, i64* @dmacHw_SRC_BURST_WIDTH_0, align 8
  %68 = or i64 %66, %67
  %69 = load i64, i64* @dmacHw_DST_BURST_WIDTH_0, align 8
  %70 = or i64 %68, %69
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = or i64 %70, %73
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = or i64 %74, %77
  %79 = load i64, i64* @dmacHw_REG_CTL_INT_EN, align 8
  %80 = or i64 %78, %79
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  store i64 %80, i64* %85, align 8
  br label %131

86:                                               ; preds = %28
  store i64 0, i64* %11, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  switch i64 %89, label %94 [
    i64 128, label %90
    i64 129, label %92
  ]

90:                                               ; preds = %86
  %91 = load i64, i64* @dmacHw_REG_CTL_TTFC_PM_PERI, align 8
  store i64 %91, i64* %11, align 8
  br label %96

92:                                               ; preds = %86
  %93 = load i64, i64* @dmacHw_REG_CTL_TTFC_MP_PERI, align 8
  store i64 %93, i64* %11, align 8
  br label %96

94:                                               ; preds = %86
  %95 = call i32 @dmacHw_ASSERT(i32 0)
  br label %96

96:                                               ; preds = %94, %92, %90
  %97 = load i64, i64* %11, align 8
  %98 = load i64, i64* @dmacHw_SRC_ADDRESS_UPDATE_MODE_INC, align 8
  %99 = or i64 %97, %98
  %100 = load i64, i64* @dmacHw_DST_ADDRESS_UPDATE_MODE_INC, align 8
  %101 = or i64 %99, %100
  %102 = load i64, i64* @dmacHw_SRC_TRANSACTION_WIDTH_32, align 8
  %103 = or i64 %101, %102
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = or i64 %103, %106
  %108 = load i64, i64* @dmacHw_SRC_BURST_WIDTH_0, align 8
  %109 = or i64 %107, %108
  %110 = load i64, i64* @dmacHw_DST_BURST_WIDTH_0, align 8
  %111 = or i64 %109, %110
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = or i64 %111, %114
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = or i64 %115, %118
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = or i64 %119, %122
  %124 = load i64, i64* @dmacHw_REG_CTL_INT_EN, align 8
  %125 = or i64 %123, %124
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  store i64 %125, i64* %130, align 8
  br label %131

131:                                              ; preds = %96, %53
  %132 = load i32, i32* @dmacHw_REG_CTL_BLOCK_TS_MASK, align 4
  %133 = and i32 %132, 1
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  store i32 %133, i32* %138, align 8
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 3
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** @dmacHw_DESC_INIT, align 8
  %143 = icmp eq %struct.TYPE_11__* %141, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %131
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %146, align 8
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 3
  store %struct.TYPE_11__* %147, %struct.TYPE_11__** %149, align 8
  br label %150

150:                                              ; preds = %144, %131
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %152, align 8
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 2
  store %struct.TYPE_11__* %153, %struct.TYPE_11__** %155, align 8
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %157 = load i32, i32* @pHead, align 4
  %158 = call i32 @dmacHw_NEXT_DESC(%struct.TYPE_9__* %156, i32 %157)
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = trunc i64 %161 to i32
  %163 = call i32 @dmacHw_DST_IS_MEMORY(i32 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %171, label %165

165:                                              ; preds = %150
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %167, align 8
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 1
  store %struct.TYPE_11__* %168, %struct.TYPE_11__** %170, align 8
  br label %171

171:                                              ; preds = %165, %150
  store i32 0, i32* %5, align 4
  br label %172

172:                                              ; preds = %171, %27, %16
  %173 = load i32, i32* %5, align 4
  ret i32 %173
}

declare dso_local %struct.TYPE_9__* @dmacHw_GET_DESC_RING(i8*) #1

declare dso_local i32 @dmacHw_ASSERT(i32) #1

declare dso_local i32 @dmacHw_NEXT_DESC(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @dmacHw_DST_IS_MEMORY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
