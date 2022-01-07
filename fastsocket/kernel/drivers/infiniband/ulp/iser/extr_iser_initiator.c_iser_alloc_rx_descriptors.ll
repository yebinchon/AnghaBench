; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_alloc_rx_descriptors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_alloc_rx_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_conn = type { %struct.iser_rx_desc*, i64, %struct.iser_device* }
%struct.iser_rx_desc = type { i32, %struct.ib_sge }
%struct.ib_sge = type { i32, i32, i32 }
%struct.iser_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ISER_QP_MAX_RECV_DTOS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ISER_RX_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"failed allocating rx descriptors / data buffers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iser_alloc_rx_descriptors(%struct.iser_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iser_conn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iser_rx_desc*, align 8
  %8 = alloca %struct.ib_sge*, align 8
  %9 = alloca %struct.iser_device*, align 8
  store %struct.iser_conn* %0, %struct.iser_conn** %3, align 8
  %10 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %11 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %10, i32 0, i32 2
  %12 = load %struct.iser_device*, %struct.iser_device** %11, align 8
  store %struct.iser_device* %12, %struct.iser_device** %9, align 8
  %13 = load i32, i32* @ISER_QP_MAX_RECV_DTOS, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 16
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.iser_rx_desc* @kmalloc(i32 %16, i32 %17)
  %19 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %20 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %19, i32 0, i32 0
  store %struct.iser_rx_desc* %18, %struct.iser_rx_desc** %20, align 8
  %21 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %22 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %21, i32 0, i32 0
  %23 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %22, align 8
  %24 = icmp ne %struct.iser_rx_desc* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  br label %109

26:                                               ; preds = %1
  %27 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %28 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %27, i32 0, i32 0
  %29 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %28, align 8
  store %struct.iser_rx_desc* %29, %struct.iser_rx_desc** %7, align 8
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %71, %26
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @ISER_QP_MAX_RECV_DTOS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %76

34:                                               ; preds = %30
  %35 = load %struct.iser_device*, %struct.iser_device** %9, align 8
  %36 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %7, align 8
  %39 = bitcast %struct.iser_rx_desc* %38 to i8*
  %40 = load i32, i32* @ISER_RX_PAYLOAD_SIZE, align 4
  %41 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %42 = call i32 @ib_dma_map_single(i32 %37, i8* %39, i32 %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load %struct.iser_device*, %struct.iser_device** %9, align 8
  %44 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i64 @ib_dma_mapping_error(i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %34
  br label %79

50:                                               ; preds = %34
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %7, align 8
  %53 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %7, align 8
  %55 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %54, i32 0, i32 1
  store %struct.ib_sge* %55, %struct.ib_sge** %8, align 8
  %56 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %7, align 8
  %57 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ib_sge*, %struct.ib_sge** %8, align 8
  %60 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @ISER_RX_PAYLOAD_SIZE, align 4
  %62 = load %struct.ib_sge*, %struct.ib_sge** %8, align 8
  %63 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.iser_device*, %struct.iser_device** %9, align 8
  %65 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ib_sge*, %struct.ib_sge** %8, align 8
  %70 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %50
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  %74 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %7, align 8
  %75 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %74, i32 1
  store %struct.iser_rx_desc* %75, %struct.iser_rx_desc** %7, align 8
  br label %30

76:                                               ; preds = %30
  %77 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %78 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  store i32 0, i32* %2, align 4
  br label %113

79:                                               ; preds = %49
  %80 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %81 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %80, i32 0, i32 0
  %82 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %81, align 8
  store %struct.iser_rx_desc* %82, %struct.iser_rx_desc** %7, align 8
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %97, %79
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %83
  %88 = load %struct.iser_device*, %struct.iser_device** %9, align 8
  %89 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %7, align 8
  %92 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @ISER_RX_PAYLOAD_SIZE, align 4
  %95 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %96 = call i32 @ib_dma_unmap_single(i32 %90, i32 %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %87
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  %100 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %7, align 8
  %101 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %100, i32 1
  store %struct.iser_rx_desc* %101, %struct.iser_rx_desc** %7, align 8
  br label %83

102:                                              ; preds = %83
  %103 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %104 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %103, i32 0, i32 0
  %105 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %104, align 8
  %106 = call i32 @kfree(%struct.iser_rx_desc* %105)
  %107 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %108 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %107, i32 0, i32 0
  store %struct.iser_rx_desc* null, %struct.iser_rx_desc** %108, align 8
  br label %109

109:                                              ; preds = %102, %25
  %110 = call i32 @iser_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %109, %76
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.iser_rx_desc* @kmalloc(i32, i32) #1

declare dso_local i32 @ib_dma_map_single(i32, i8*, i32, i32) #1

declare dso_local i64 @ib_dma_mapping_error(i32, i32) #1

declare dso_local i32 @ib_dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.iser_rx_desc*) #1

declare dso_local i32 @iser_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
