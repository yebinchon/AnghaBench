; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ibmveth.c_ibmveth_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ibmveth.c_ibmveth_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmveth_adapter = type { i32*, i8*, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_8__*, %struct.TYPE_5__, i32*, i8*, i32*, i8* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.device }
%struct.device = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32*, i8* }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_ERROR_CODE = common dso_local global i8* null, align 8
@IBMVETH_NUM_BUFF_POOLS = common dso_local global i32 0, align 4
@IBMVETH_BUFF_OH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmveth_adapter*)* @ibmveth_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmveth_cleanup(%struct.ibmveth_adapter* %0) #0 {
  %2 = alloca %struct.ibmveth_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  store %struct.ibmveth_adapter* %0, %struct.ibmveth_adapter** %2, align 8
  %5 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %5, i32 0, i32 3
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %9, i32 0, i32 8
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %38

13:                                               ; preds = %1
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %15, i32 0, i32 9
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @dma_mapping_error(%struct.device* %14, i8* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %13
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %22, i32 0, i32 9
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %26 = call i32 @dma_unmap_single(%struct.device* %21, i8* %24, i32 4096, i32 %25)
  %27 = load i8*, i8** @DMA_ERROR_CODE, align 8
  %28 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %28, i32 0, i32 9
  store i8* %27, i8** %29, align 8
  br label %30

30:                                               ; preds = %20, %13
  %31 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %31, i32 0, i32 8
  %33 = load i32*, i32** %32, align 8
  %34 = ptrtoint i32* %33 to i64
  %35 = call i32 @free_page(i64 %34)
  %36 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %36, i32 0, i32 8
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %30, %1
  %39 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %39, i32 0, i32 6
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %68

43:                                               ; preds = %38
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %45, i32 0, i32 7
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @dma_mapping_error(%struct.device* %44, i8* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %43
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %53 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %52, i32 0, i32 7
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %56 = call i32 @dma_unmap_single(%struct.device* %51, i8* %54, i32 4096, i32 %55)
  %57 = load i8*, i8** @DMA_ERROR_CODE, align 8
  %58 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %59 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %58, i32 0, i32 7
  store i8* %57, i8** %59, align 8
  br label %60

60:                                               ; preds = %50, %43
  %61 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %62 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %61, i32 0, i32 6
  %63 = load i32*, i32** %62, align 8
  %64 = ptrtoint i32* %63 to i64
  %65 = call i32 @free_page(i64 %64)
  %66 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %67 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %66, i32 0, i32 6
  store i32* null, i32** %67, align 8
  br label %68

68:                                               ; preds = %60, %38
  %69 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %70 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %107

74:                                               ; preds = %68
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %77 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @dma_mapping_error(%struct.device* %75, i8* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %98, label %82

82:                                               ; preds = %74
  %83 = load %struct.device*, %struct.device** %4, align 8
  %84 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %85 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %89 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %93 = call i32 @dma_unmap_single(%struct.device* %83, i8* %87, i32 %91, i32 %92)
  %94 = load i8*, i8** @DMA_ERROR_CODE, align 8
  %95 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %96 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  store i8* %94, i8** %97, align 8
  br label %98

98:                                               ; preds = %82, %74
  %99 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %100 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @kfree(i32* %102)
  %104 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %105 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  store i32* null, i32** %106, align 8
  br label %107

107:                                              ; preds = %98, %68
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %132, %107
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* @IBMVETH_NUM_BUFF_POOLS, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %135

112:                                              ; preds = %108
  %113 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %114 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %113, i32 0, i32 4
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = load i32, i32* %3, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %112
  %123 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %124 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %125 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %124, i32 0, i32 4
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = load i32, i32* %3, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i64 %128
  %130 = call i32 @ibmveth_free_buffer_pool(%struct.ibmveth_adapter* %123, %struct.TYPE_8__* %129)
  br label %131

131:                                              ; preds = %122, %112
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %3, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %3, align 4
  br label %108

135:                                              ; preds = %108
  %136 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %137 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %174

140:                                              ; preds = %135
  %141 = load %struct.device*, %struct.device** %4, align 8
  %142 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %143 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @dma_mapping_error(%struct.device* %141, i8* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %167, label %147

147:                                              ; preds = %140
  %148 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %149 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %148, i32 0, i32 3
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %153 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %152, i32 0, i32 1
  %154 = load i8*, i8** %153, align 8
  %155 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %156 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %155, i32 0, i32 2
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @IBMVETH_BUFF_OH, align 4
  %161 = add nsw i32 %159, %160
  %162 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %163 = call i32 @dma_unmap_single(%struct.device* %151, i8* %154, i32 %161, i32 %162)
  %164 = load i8*, i8** @DMA_ERROR_CODE, align 8
  %165 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %166 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %165, i32 0, i32 1
  store i8* %164, i8** %166, align 8
  br label %167

167:                                              ; preds = %147, %140
  %168 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %169 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = call i32 @kfree(i32* %170)
  %172 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %173 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %172, i32 0, i32 0
  store i32* null, i32** %173, align 8
  br label %174

174:                                              ; preds = %167, %135
  ret void
}

declare dso_local i32 @dma_mapping_error(%struct.device*, i8*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @ibmveth_free_buffer_pool(%struct.ibmveth_adapter*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
