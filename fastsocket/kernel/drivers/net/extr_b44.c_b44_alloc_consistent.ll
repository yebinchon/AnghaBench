; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_alloc_consistent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_alloc_consistent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b44 = type { i32, i64, %struct.dma_desc*, %struct.TYPE_2__*, i64, %struct.dma_desc*, i8*, i8* }
%struct.TYPE_2__ = type { i32 }
%struct.dma_desc = type { i32 }

@B44_RX_RING_SIZE = common dso_local global i32 0, align 4
@B44_TX_RING_SIZE = common dso_local global i32 0, align 4
@DMA_TABLE_BYTES = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@B44_FLAG_RX_RING_HACK = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@B44_FLAG_TX_RING_HACK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b44*, i32)* @b44_alloc_consistent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b44_alloc_consistent(%struct.b44* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.b44*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_desc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.dma_desc*, align 8
  %10 = alloca i64, align 8
  store %struct.b44* %0, %struct.b44** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @B44_RX_RING_SIZE, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i8* @kzalloc(i32 %15, i32 %16)
  %18 = load %struct.b44*, %struct.b44** %4, align 8
  %19 = getelementptr inbounds %struct.b44, %struct.b44* %18, i32 0, i32 7
  store i8* %17, i8** %19, align 8
  %20 = load %struct.b44*, %struct.b44** %4, align 8
  %21 = getelementptr inbounds %struct.b44, %struct.b44* %20, i32 0, i32 7
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %174

25:                                               ; preds = %2
  %26 = load i32, i32* @B44_TX_RING_SIZE, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i8* @kzalloc(i32 %30, i32 %31)
  %33 = load %struct.b44*, %struct.b44** %4, align 8
  %34 = getelementptr inbounds %struct.b44, %struct.b44* %33, i32 0, i32 6
  store i8* %32, i8** %34, align 8
  %35 = load %struct.b44*, %struct.b44** %4, align 8
  %36 = getelementptr inbounds %struct.b44, %struct.b44* %35, i32 0, i32 6
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %25
  br label %174

40:                                               ; preds = %25
  %41 = load i32, i32* @DMA_TABLE_BYTES, align 4
  store i32 %41, i32* %6, align 4
  %42 = load %struct.b44*, %struct.b44** %4, align 8
  %43 = getelementptr inbounds %struct.b44, %struct.b44* %42, i32 0, i32 3
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.b44*, %struct.b44** %4, align 8
  %49 = getelementptr inbounds %struct.b44, %struct.b44* %48, i32 0, i32 4
  %50 = load i32, i32* %5, align 4
  %51 = call i8* @dma_alloc_coherent(i32 %46, i32 %47, i64* %49, i32 %50)
  %52 = bitcast i8* %51 to %struct.dma_desc*
  %53 = load %struct.b44*, %struct.b44** %4, align 8
  %54 = getelementptr inbounds %struct.b44, %struct.b44* %53, i32 0, i32 5
  store %struct.dma_desc* %52, %struct.dma_desc** %54, align 8
  %55 = load %struct.b44*, %struct.b44** %4, align 8
  %56 = getelementptr inbounds %struct.b44, %struct.b44* %55, i32 0, i32 5
  %57 = load %struct.dma_desc*, %struct.dma_desc** %56, align 8
  %58 = icmp ne %struct.dma_desc* %57, null
  br i1 %58, label %107, label %59

59:                                               ; preds = %40
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i8* @kzalloc(i32 %60, i32 %61)
  %63 = bitcast i8* %62 to %struct.dma_desc*
  store %struct.dma_desc* %63, %struct.dma_desc** %7, align 8
  %64 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %65 = icmp ne %struct.dma_desc* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %59
  br label %174

67:                                               ; preds = %59
  %68 = load %struct.b44*, %struct.b44** %4, align 8
  %69 = getelementptr inbounds %struct.b44, %struct.b44* %68, i32 0, i32 3
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %74 = load i32, i32* @DMA_TABLE_BYTES, align 4
  %75 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %76 = call i64 @dma_map_single(i32 %72, %struct.dma_desc* %73, i32 %74, i32 %75)
  store i64 %76, i64* %8, align 8
  %77 = load %struct.b44*, %struct.b44** %4, align 8
  %78 = getelementptr inbounds %struct.b44, %struct.b44* %77, i32 0, i32 3
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* %8, align 8
  %83 = call i64 @dma_mapping_error(i32 %81, i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %67
  %86 = load i64, i64* %8, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %86, %88
  %90 = call i64 @DMA_BIT_MASK(i32 30)
  %91 = icmp sgt i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %85, %67
  %93 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %94 = call i32 @kfree(%struct.dma_desc* %93)
  br label %174

95:                                               ; preds = %85
  %96 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %97 = load %struct.b44*, %struct.b44** %4, align 8
  %98 = getelementptr inbounds %struct.b44, %struct.b44* %97, i32 0, i32 5
  store %struct.dma_desc* %96, %struct.dma_desc** %98, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load %struct.b44*, %struct.b44** %4, align 8
  %101 = getelementptr inbounds %struct.b44, %struct.b44* %100, i32 0, i32 4
  store i64 %99, i64* %101, align 8
  %102 = load i32, i32* @B44_FLAG_RX_RING_HACK, align 4
  %103 = load %struct.b44*, %struct.b44** %4, align 8
  %104 = getelementptr inbounds %struct.b44, %struct.b44* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %95, %40
  %108 = load %struct.b44*, %struct.b44** %4, align 8
  %109 = getelementptr inbounds %struct.b44, %struct.b44* %108, i32 0, i32 3
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.b44*, %struct.b44** %4, align 8
  %115 = getelementptr inbounds %struct.b44, %struct.b44* %114, i32 0, i32 1
  %116 = load i32, i32* %5, align 4
  %117 = call i8* @dma_alloc_coherent(i32 %112, i32 %113, i64* %115, i32 %116)
  %118 = bitcast i8* %117 to %struct.dma_desc*
  %119 = load %struct.b44*, %struct.b44** %4, align 8
  %120 = getelementptr inbounds %struct.b44, %struct.b44* %119, i32 0, i32 2
  store %struct.dma_desc* %118, %struct.dma_desc** %120, align 8
  %121 = load %struct.b44*, %struct.b44** %4, align 8
  %122 = getelementptr inbounds %struct.b44, %struct.b44* %121, i32 0, i32 2
  %123 = load %struct.dma_desc*, %struct.dma_desc** %122, align 8
  %124 = icmp ne %struct.dma_desc* %123, null
  br i1 %124, label %173, label %125

125:                                              ; preds = %107
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* %5, align 4
  %128 = call i8* @kzalloc(i32 %126, i32 %127)
  %129 = bitcast i8* %128 to %struct.dma_desc*
  store %struct.dma_desc* %129, %struct.dma_desc** %9, align 8
  %130 = load %struct.dma_desc*, %struct.dma_desc** %9, align 8
  %131 = icmp ne %struct.dma_desc* %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %125
  br label %174

133:                                              ; preds = %125
  %134 = load %struct.b44*, %struct.b44** %4, align 8
  %135 = getelementptr inbounds %struct.b44, %struct.b44* %134, i32 0, i32 3
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.dma_desc*, %struct.dma_desc** %9, align 8
  %140 = load i32, i32* @DMA_TABLE_BYTES, align 4
  %141 = load i32, i32* @DMA_TO_DEVICE, align 4
  %142 = call i64 @dma_map_single(i32 %138, %struct.dma_desc* %139, i32 %140, i32 %141)
  store i64 %142, i64* %10, align 8
  %143 = load %struct.b44*, %struct.b44** %4, align 8
  %144 = getelementptr inbounds %struct.b44, %struct.b44* %143, i32 0, i32 3
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i64, i64* %10, align 8
  %149 = call i64 @dma_mapping_error(i32 %147, i64 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %133
  %152 = load i64, i64* %10, align 8
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %152, %154
  %156 = call i64 @DMA_BIT_MASK(i32 30)
  %157 = icmp sgt i64 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %151, %133
  %159 = load %struct.dma_desc*, %struct.dma_desc** %9, align 8
  %160 = call i32 @kfree(%struct.dma_desc* %159)
  br label %174

161:                                              ; preds = %151
  %162 = load %struct.dma_desc*, %struct.dma_desc** %9, align 8
  %163 = load %struct.b44*, %struct.b44** %4, align 8
  %164 = getelementptr inbounds %struct.b44, %struct.b44* %163, i32 0, i32 2
  store %struct.dma_desc* %162, %struct.dma_desc** %164, align 8
  %165 = load i64, i64* %10, align 8
  %166 = load %struct.b44*, %struct.b44** %4, align 8
  %167 = getelementptr inbounds %struct.b44, %struct.b44* %166, i32 0, i32 1
  store i64 %165, i64* %167, align 8
  %168 = load i32, i32* @B44_FLAG_TX_RING_HACK, align 4
  %169 = load %struct.b44*, %struct.b44** %4, align 8
  %170 = getelementptr inbounds %struct.b44, %struct.b44* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 8
  br label %173

173:                                              ; preds = %161, %107
  store i32 0, i32* %3, align 4
  br label %179

174:                                              ; preds = %158, %132, %92, %66, %39, %24
  %175 = load %struct.b44*, %struct.b44** %4, align 8
  %176 = call i32 @b44_free_consistent(%struct.b44* %175)
  %177 = load i32, i32* @ENOMEM, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %3, align 4
  br label %179

179:                                              ; preds = %174, %173
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32, i32, i64*, i32) #1

declare dso_local i64 @dma_map_single(i32, %struct.dma_desc*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i64) #1

declare dso_local i64 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @kfree(%struct.dma_desc*) #1

declare dso_local i32 @b44_free_consistent(%struct.b44*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
