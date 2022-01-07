; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_pxa2xx_spi.c_map_dma_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_pxa2xx_spi.c_map_dma_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { i32, i32, i32, i8*, i8*, i64*, i64*, i64*, %struct.TYPE_4__*, %struct.spi_message* }
%struct.TYPE_4__ = type { i32 }
%struct.spi_message = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.driver_data*)* @map_dma_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_dma_buffers(%struct.driver_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.driver_data*, align 8
  %4 = alloca %struct.spi_message*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.driver_data* %0, %struct.driver_data** %3, align 8
  %6 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %7 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %6, i32 0, i32 9
  %8 = load %struct.spi_message*, %struct.spi_message** %7, align 8
  store %struct.spi_message* %8, %struct.spi_message** %4, align 8
  %9 = load %struct.spi_message*, %struct.spi_message** %4, align 8
  %10 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %14 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %13, i32 0, i32 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %143

20:                                               ; preds = %1
  %21 = load %struct.spi_message*, %struct.spi_message** %4, align 8
  %22 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %27 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %26, i32 0, i32 4
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %32 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %31, i32 0, i32 3
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br label %35

35:                                               ; preds = %30, %25
  %36 = phi i1 [ false, %25 ], [ %34, %30 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %2, align 4
  br label %143

38:                                               ; preds = %20
  %39 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %40 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %39, i32 0, i32 5
  %41 = load i64*, i64** %40, align 8
  %42 = call i32 @IS_DMA_ALIGNED(i64* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %46 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %45, i32 0, i32 6
  %47 = load i64*, i64** %46, align 8
  %48 = call i32 @IS_DMA_ALIGNED(i64* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44, %38
  store i32 0, i32* %2, align 4
  br label %143

51:                                               ; preds = %44
  %52 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %53 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %52, i32 0, i32 5
  %54 = load i64*, i64** %53, align 8
  %55 = icmp eq i64* %54, null
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %58 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %57, i32 0, i32 7
  %59 = load i64*, i64** %58, align 8
  store i64 0, i64* %59, align 8
  %60 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %61 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %60, i32 0, i32 7
  %62 = load i64*, i64** %61, align 8
  %63 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %64 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %63, i32 0, i32 5
  store i64* %62, i64** %64, align 8
  %65 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %66 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %65, i32 0, i32 0
  store i32 4, i32* %66, align 8
  br label %73

67:                                               ; preds = %51
  %68 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %69 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %72 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %67, %56
  %74 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %75 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %74, i32 0, i32 6
  %76 = load i64*, i64** %75, align 8
  %77 = icmp eq i64* %76, null
  br i1 %77, label %78, label %89

78:                                               ; preds = %73
  %79 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %80 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %79, i32 0, i32 7
  %81 = load i64*, i64** %80, align 8
  store i64 0, i64* %81, align 8
  %82 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %83 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %82, i32 0, i32 7
  %84 = load i64*, i64** %83, align 8
  %85 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %86 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %85, i32 0, i32 6
  store i64* %84, i64** %86, align 8
  %87 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %88 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %87, i32 0, i32 2
  store i32 4, i32* %88, align 8
  br label %95

89:                                               ; preds = %73
  %90 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %91 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %94 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %89, %78
  %96 = load %struct.device*, %struct.device** %5, align 8
  %97 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %98 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %97, i32 0, i32 6
  %99 = load i64*, i64** %98, align 8
  %100 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %101 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @DMA_TO_DEVICE, align 4
  %104 = call i8* @dma_map_single(%struct.device* %96, i64* %99, i32 %102, i32 %103)
  %105 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %106 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %105, i32 0, i32 3
  store i8* %104, i8** %106, align 8
  %107 = load %struct.device*, %struct.device** %5, align 8
  %108 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %109 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %108, i32 0, i32 3
  %110 = load i8*, i8** %109, align 8
  %111 = call i64 @dma_mapping_error(%struct.device* %107, i8* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %95
  store i32 0, i32* %2, align 4
  br label %143

114:                                              ; preds = %95
  %115 = load %struct.device*, %struct.device** %5, align 8
  %116 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %117 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %116, i32 0, i32 5
  %118 = load i64*, i64** %117, align 8
  %119 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %120 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %123 = call i8* @dma_map_single(%struct.device* %115, i64* %118, i32 %121, i32 %122)
  %124 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %125 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %124, i32 0, i32 4
  store i8* %123, i8** %125, align 8
  %126 = load %struct.device*, %struct.device** %5, align 8
  %127 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %128 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %127, i32 0, i32 4
  %129 = load i8*, i8** %128, align 8
  %130 = call i64 @dma_mapping_error(%struct.device* %126, i8* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %114
  %133 = load %struct.device*, %struct.device** %5, align 8
  %134 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %135 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %134, i32 0, i32 3
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %138 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @DMA_TO_DEVICE, align 4
  %141 = call i32 @dma_unmap_single(%struct.device* %133, i8* %136, i32 %139, i32 %140)
  store i32 0, i32* %2, align 4
  br label %143

142:                                              ; preds = %114
  store i32 1, i32* %2, align 4
  br label %143

143:                                              ; preds = %142, %132, %113, %50, %35, %19
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i32 @IS_DMA_ALIGNED(i64*) #1

declare dso_local i8* @dma_map_single(%struct.device*, i64*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i8*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
