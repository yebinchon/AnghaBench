; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_post_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_post_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_conn = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iser_tx_desc = type { i32, i32, i32 }
%struct.ib_send_wr = type { i64, i32, i32, i32, i32, i32* }

@ISER_HEADERS_LEN = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@IB_WR_SEND = common dso_local global i32 0, align 4
@IB_SEND_SIGNALED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ib_post_send failed, ret:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iser_post_send(%struct.iser_conn* %0, %struct.iser_tx_desc* %1) #0 {
  %3 = alloca %struct.iser_conn*, align 8
  %4 = alloca %struct.iser_tx_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_send_wr, align 8
  %7 = alloca %struct.ib_send_wr*, align 8
  store %struct.iser_conn* %0, %struct.iser_conn** %3, align 8
  store %struct.iser_tx_desc* %1, %struct.iser_tx_desc** %4, align 8
  %8 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %9 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %14 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ISER_HEADERS_LEN, align 4
  %17 = load i32, i32* @DMA_TO_DEVICE, align 4
  %18 = call i32 @ib_dma_sync_single_for_device(i32 %12, i32 %15, i32 %16, i32 %17)
  %19 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %6, i32 0, i32 5
  store i32* null, i32** %19, align 8
  %20 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %21 = ptrtoint %struct.iser_tx_desc* %20 to i64
  %22 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %6, i32 0, i32 0
  store i64 %21, i64* %22, align 8
  %23 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %24 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %6, i32 0, i32 4
  store i32 %25, i32* %26, align 4
  %27 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %28 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %6, i32 0, i32 3
  store i32 %29, i32* %30, align 8
  %31 = load i32, i32* @IB_WR_SEND, align 4
  %32 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %6, i32 0, i32 2
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %34 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %6, i32 0, i32 1
  store i32 %33, i32* %34, align 8
  %35 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %36 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %35, i32 0, i32 0
  %37 = call i32 @atomic_inc(i32* %36)
  %38 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %39 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ib_post_send(i32 %40, %struct.ib_send_wr* %6, %struct.ib_send_wr** %7)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %2
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @iser_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %48 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %47, i32 0, i32 0
  %49 = call i32 @atomic_dec(i32* %48)
  br label %50

50:                                               ; preds = %44, %2
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @ib_dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ib_post_send(i32, %struct.ib_send_wr*, %struct.ib_send_wr**) #1

declare dso_local i32 @iser_err(i8*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
