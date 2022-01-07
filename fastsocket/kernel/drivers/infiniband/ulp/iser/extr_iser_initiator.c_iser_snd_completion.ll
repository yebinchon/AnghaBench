; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_snd_completion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_snd_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.iser_tx_desc = type { i64, i32 }
%struct.iser_conn = type { i32, %struct.iser_device* }
%struct.iser_device = type { i32 }
%struct.iscsi_task = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@ISCSI_TX_DATAOUT = common dso_local global i64 0, align 8
@ISER_HEADERS_LEN = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ig = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ISCSI_TX_CONTROL = common dso_local global i64 0, align 8
@RESERVED_ITT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iser_snd_completion(%struct.iser_tx_desc* %0, %struct.iser_conn* %1) #0 {
  %3 = alloca %struct.iser_tx_desc*, align 8
  %4 = alloca %struct.iser_conn*, align 8
  %5 = alloca %struct.iscsi_task*, align 8
  %6 = alloca %struct.iser_device*, align 8
  store %struct.iser_tx_desc* %0, %struct.iser_tx_desc** %3, align 8
  store %struct.iser_conn* %1, %struct.iser_conn** %4, align 8
  %7 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %8 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %7, i32 0, i32 1
  %9 = load %struct.iser_device*, %struct.iser_device** %8, align 8
  store %struct.iser_device* %9, %struct.iser_device** %6, align 8
  %10 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %3, align 8
  %11 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ISCSI_TX_DATAOUT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = load %struct.iser_device*, %struct.iser_device** %6, align 8
  %17 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %3, align 8
  %20 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ISER_HEADERS_LEN, align 4
  %23 = load i32, i32* @DMA_TO_DEVICE, align 4
  %24 = call i32 @ib_dma_unmap_single(i32 %18, i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ig, i32 0, i32 0), align 4
  %26 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %3, align 8
  %27 = call i32 @kmem_cache_free(i32 %25, %struct.iser_tx_desc* %26)
  br label %28

28:                                               ; preds = %15, %2
  %29 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %30 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %29, i32 0, i32 0
  %31 = call i32 @atomic_dec(i32* %30)
  %32 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %3, align 8
  %33 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ISCSI_TX_CONTROL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %28
  %38 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %3, align 8
  %39 = bitcast %struct.iser_tx_desc* %38 to i8*
  %40 = ptrtoint i8* %39 to i64
  %41 = sub i64 %40, 8
  %42 = inttoptr i64 %41 to i8*
  %43 = bitcast i8* %42 to %struct.iscsi_task*
  store %struct.iscsi_task* %43, %struct.iscsi_task** %5, align 8
  %44 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %45 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @RESERVED_ITT, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %37
  %52 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %53 = call i32 @iscsi_put_task(%struct.iscsi_task* %52)
  br label %54

54:                                               ; preds = %51, %37
  br label %55

55:                                               ; preds = %54, %28
  ret void
}

declare dso_local i32 @ib_dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.iser_tx_desc*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @iscsi_put_task(%struct.iscsi_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
