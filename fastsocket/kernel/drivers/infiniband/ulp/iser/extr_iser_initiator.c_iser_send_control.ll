; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_send_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_send_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.iscsi_task*, %struct.iscsi_iser_conn* }
%struct.iscsi_iser_conn = type { %struct.iser_conn* }
%struct.iser_conn = type { i32, i32, %struct.iser_device* }
%struct.iser_device = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.iscsi_task = type { %struct.TYPE_4__*, i32, i32, %struct.iscsi_iser_task* }
%struct.TYPE_4__ = type { i32 }
%struct.iscsi_iser_task = type { %struct.iser_tx_desc }
%struct.iser_tx_desc = type { i32, %struct.ib_sge*, i32 }
%struct.ib_sge = type { i32, i32, i32 }

@ISCSI_TX_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"data present on non login task!!!\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"conn %p failed err %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iser_send_control(%struct.iscsi_conn* %0, %struct.iscsi_task* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.iscsi_task*, align 8
  %6 = alloca %struct.iscsi_iser_conn*, align 8
  %7 = alloca %struct.iscsi_iser_task*, align 8
  %8 = alloca %struct.iser_tx_desc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iser_device*, align 8
  %12 = alloca %struct.iser_conn*, align 8
  %13 = alloca %struct.ib_sge*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store %struct.iscsi_task* %1, %struct.iscsi_task** %5, align 8
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %15 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %14, i32 0, i32 1
  %16 = load %struct.iscsi_iser_conn*, %struct.iscsi_iser_conn** %15, align 8
  store %struct.iscsi_iser_conn* %16, %struct.iscsi_iser_conn** %6, align 8
  %17 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %18 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %17, i32 0, i32 3
  %19 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %18, align 8
  store %struct.iscsi_iser_task* %19, %struct.iscsi_iser_task** %7, align 8
  %20 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %7, align 8
  %21 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %20, i32 0, i32 0
  store %struct.iser_tx_desc* %21, %struct.iser_tx_desc** %8, align 8
  store i32 0, i32* %10, align 4
  %22 = load %struct.iscsi_iser_conn*, %struct.iscsi_iser_conn** %6, align 8
  %23 = getelementptr inbounds %struct.iscsi_iser_conn, %struct.iscsi_iser_conn* %22, i32 0, i32 0
  %24 = load %struct.iser_conn*, %struct.iser_conn** %23, align 8
  store %struct.iser_conn* %24, %struct.iser_conn** %12, align 8
  %25 = load i32, i32* @ISCSI_TX_CONTROL, align 4
  %26 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %8, align 8
  %27 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.iscsi_iser_conn*, %struct.iscsi_iser_conn** %6, align 8
  %29 = getelementptr inbounds %struct.iscsi_iser_conn, %struct.iscsi_iser_conn* %28, i32 0, i32 0
  %30 = load %struct.iser_conn*, %struct.iser_conn** %29, align 8
  %31 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %8, align 8
  %32 = call i32 @iser_create_send_desc(%struct.iser_conn* %30, %struct.iser_tx_desc* %31)
  %33 = load %struct.iscsi_iser_conn*, %struct.iscsi_iser_conn** %6, align 8
  %34 = getelementptr inbounds %struct.iscsi_iser_conn, %struct.iscsi_iser_conn* %33, i32 0, i32 0
  %35 = load %struct.iser_conn*, %struct.iser_conn** %34, align 8
  %36 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %35, i32 0, i32 2
  %37 = load %struct.iser_device*, %struct.iser_device** %36, align 8
  store %struct.iser_device* %37, %struct.iser_device** %11, align 8
  %38 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %39 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @ntoh24(i32 %42)
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp ugt i64 %44, 0
  br i1 %45, label %46, label %114

46:                                               ; preds = %2
  %47 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %8, align 8
  %48 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %47, i32 0, i32 1
  %49 = load %struct.ib_sge*, %struct.ib_sge** %48, align 8
  %50 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %49, i64 1
  store %struct.ib_sge* %50, %struct.ib_sge** %13, align 8
  %51 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %52 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %53 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %52, i32 0, i32 0
  %54 = load %struct.iscsi_task*, %struct.iscsi_task** %53, align 8
  %55 = icmp ne %struct.iscsi_task* %51, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = call i32 (i8*, ...) @iser_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %148

58:                                               ; preds = %46
  %59 = load %struct.iser_device*, %struct.iser_device** %11, align 8
  %60 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.iser_conn*, %struct.iser_conn** %12, align 8
  %63 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %66 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @DMA_TO_DEVICE, align 4
  %69 = call i32 @ib_dma_sync_single_for_cpu(i32 %61, i32 %64, i32 %67, i32 %68)
  %70 = load %struct.iscsi_iser_conn*, %struct.iscsi_iser_conn** %6, align 8
  %71 = getelementptr inbounds %struct.iscsi_iser_conn, %struct.iscsi_iser_conn* %70, i32 0, i32 0
  %72 = load %struct.iser_conn*, %struct.iser_conn** %71, align 8
  %73 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %76 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %79 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @memcpy(i32 %74, i32 %77, i32 %80)
  %82 = load %struct.iser_device*, %struct.iser_device** %11, align 8
  %83 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.iser_conn*, %struct.iser_conn** %12, align 8
  %86 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %89 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @DMA_TO_DEVICE, align 4
  %92 = call i32 @ib_dma_sync_single_for_device(i32 %84, i32 %87, i32 %90, i32 %91)
  %93 = load %struct.iscsi_iser_conn*, %struct.iscsi_iser_conn** %6, align 8
  %94 = getelementptr inbounds %struct.iscsi_iser_conn, %struct.iscsi_iser_conn* %93, i32 0, i32 0
  %95 = load %struct.iser_conn*, %struct.iser_conn** %94, align 8
  %96 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.ib_sge*, %struct.ib_sge** %13, align 8
  %99 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  %100 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %101 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.ib_sge*, %struct.ib_sge** %13, align 8
  %104 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.iser_device*, %struct.iser_device** %11, align 8
  %106 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %105, i32 0, i32 0
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ib_sge*, %struct.ib_sge** %13, align 8
  %111 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  %112 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %8, align 8
  %113 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %112, i32 0, i32 0
  store i32 2, i32* %113, align 8
  br label %114

114:                                              ; preds = %58, %2
  %115 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %116 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %117 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %116, i32 0, i32 0
  %118 = load %struct.iscsi_task*, %struct.iscsi_task** %117, align 8
  %119 = icmp eq %struct.iscsi_task* %115, %118
  br i1 %119, label %120, label %138

120:                                              ; preds = %114
  %121 = load %struct.iscsi_iser_conn*, %struct.iscsi_iser_conn** %6, align 8
  %122 = getelementptr inbounds %struct.iscsi_iser_conn, %struct.iscsi_iser_conn* %121, i32 0, i32 0
  %123 = load %struct.iser_conn*, %struct.iser_conn** %122, align 8
  %124 = call i32 @iser_post_recvl(%struct.iser_conn* %123)
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  br label %148

128:                                              ; preds = %120
  %129 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %130 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %131 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %130, i32 0, i32 0
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = call i32 @iser_post_rx_bufs(%struct.iscsi_conn* %129, %struct.TYPE_4__* %132)
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %128
  br label %148

137:                                              ; preds = %128
  br label %138

138:                                              ; preds = %137, %114
  %139 = load %struct.iscsi_iser_conn*, %struct.iscsi_iser_conn** %6, align 8
  %140 = getelementptr inbounds %struct.iscsi_iser_conn, %struct.iscsi_iser_conn* %139, i32 0, i32 0
  %141 = load %struct.iser_conn*, %struct.iser_conn** %140, align 8
  %142 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %8, align 8
  %143 = call i32 @iser_post_send(%struct.iser_conn* %141, %struct.iser_tx_desc* %142)
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %138
  store i32 0, i32* %3, align 4
  br label %153

147:                                              ; preds = %138
  br label %148

148:                                              ; preds = %147, %136, %127, %56
  %149 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %150 = load i32, i32* %10, align 4
  %151 = call i32 (i8*, ...) @iser_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.iscsi_conn* %149, i32 %150)
  %152 = load i32, i32* %10, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %148, %146
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @iser_create_send_desc(%struct.iser_conn*, %struct.iser_tx_desc*) #1

declare dso_local i64 @ntoh24(i32) #1

declare dso_local i32 @iser_err(i8*, ...) #1

declare dso_local i32 @ib_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ib_dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @iser_post_recvl(%struct.iser_conn*) #1

declare dso_local i32 @iser_post_rx_bufs(%struct.iscsi_conn*, %struct.TYPE_4__*) #1

declare dso_local i32 @iser_post_send(%struct.iser_conn*, %struct.iser_tx_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
