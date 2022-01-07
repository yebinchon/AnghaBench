; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_user_sdma.c_qib_user_sdma_free_pkt_frag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_user_sdma.c_qib_user_sdma_free_pkt_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.qib_user_sdma_queue = type { i32 }
%struct.qib_user_sdma_pkt = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i32, i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_pkt*, i32)* @qib_user_sdma_free_pkt_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_user_sdma_free_pkt_frag(%struct.device* %0, %struct.qib_user_sdma_queue* %1, %struct.qib_user_sdma_pkt* %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.qib_user_sdma_queue*, align 8
  %7 = alloca %struct.qib_user_sdma_pkt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.qib_user_sdma_queue* %1, %struct.qib_user_sdma_queue** %6, align 8
  store %struct.qib_user_sdma_pkt* %2, %struct.qib_user_sdma_pkt** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %7, align 8
  %12 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* %9, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %101

20:                                               ; preds = %4
  %21 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %7, align 8
  %22 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %20
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %7, align 8
  %33 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %7, align 8
  %41 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @DMA_TO_DEVICE, align 4
  %49 = call i32 @dma_unmap_page(%struct.device* %31, i32 %39, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %30, %20
  %51 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %7, align 8
  %52 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %50
  %61 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %7, align 8
  %62 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @kunmap(i64 %68)
  br label %70

70:                                               ; preds = %60, %50
  %71 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %7, align 8
  %72 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %70
  %81 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %7, align 8
  %82 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @put_page(i64 %88)
  br label %100

90:                                               ; preds = %70
  %91 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %7, align 8
  %92 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @__free_page(i64 %98)
  br label %100

100:                                              ; preds = %90, %80
  br label %133

101:                                              ; preds = %4
  %102 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %7, align 8
  %103 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %132

111:                                              ; preds = %101
  %112 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %6, align 8
  %113 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %7, align 8
  %116 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %115, i32 0, i32 0
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %7, align 8
  %124 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %123, i32 0, i32 0
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @dma_pool_free(i32 %114, i64 %122, i32 %130)
  br label %132

132:                                              ; preds = %111, %101
  br label %133

133:                                              ; preds = %132, %100
  ret void
}

declare dso_local i32 @dma_unmap_page(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @kunmap(i64) #1

declare dso_local i32 @put_page(i64) #1

declare dso_local i32 @__free_page(i64) #1

declare dso_local i32 @dma_pool_free(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
