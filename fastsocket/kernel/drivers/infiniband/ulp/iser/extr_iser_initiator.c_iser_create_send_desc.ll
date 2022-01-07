; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_create_send_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_create_send_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_conn = type { %struct.iser_device* }
%struct.iser_device = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.iser_tx_desc = type { i32, %struct.TYPE_4__*, %struct.TYPE_6__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@ISER_HEADERS_LEN = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ISER_VER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"sdesc %p lkey mismatch, fixing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iser_conn*, %struct.iser_tx_desc*)* @iser_create_send_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iser_create_send_desc(%struct.iser_conn* %0, %struct.iser_tx_desc* %1) #0 {
  %3 = alloca %struct.iser_conn*, align 8
  %4 = alloca %struct.iser_tx_desc*, align 8
  %5 = alloca %struct.iser_device*, align 8
  store %struct.iser_conn* %0, %struct.iser_conn** %3, align 8
  store %struct.iser_tx_desc* %1, %struct.iser_tx_desc** %4, align 8
  %6 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %7 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %6, i32 0, i32 0
  %8 = load %struct.iser_device*, %struct.iser_device** %7, align 8
  store %struct.iser_device* %8, %struct.iser_device** %5, align 8
  %9 = load %struct.iser_device*, %struct.iser_device** %5, align 8
  %10 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %13 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ISER_HEADERS_LEN, align 4
  %16 = load i32, i32* @DMA_TO_DEVICE, align 4
  %17 = call i32 @ib_dma_sync_single_for_cpu(i32 %11, i32 %14, i32 %15, i32 %16)
  %18 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %19 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %18, i32 0, i32 2
  %20 = call i32 @memset(%struct.TYPE_6__* %19, i32 0, i32 4)
  %21 = load i32, i32* @ISER_VER, align 4
  %22 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %23 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %26 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %28 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.iser_device*, %struct.iser_device** %5, align 8
  %34 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %32, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %2
  %40 = load %struct.iser_device*, %struct.iser_device** %5, align 8
  %41 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %46 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i64 %44, i64* %49, align 8
  %50 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %51 = call i32 @iser_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.iser_tx_desc* %50)
  br label %52

52:                                               ; preds = %39, %2
  ret void
}

declare dso_local i32 @ib_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @iser_dbg(i8*, %struct.iser_tx_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
