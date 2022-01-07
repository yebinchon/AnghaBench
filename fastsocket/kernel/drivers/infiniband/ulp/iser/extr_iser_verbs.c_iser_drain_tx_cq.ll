; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_drain_tx_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_drain_tx_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_device = type { %struct.ib_cq** }
%struct.ib_cq = type { i32 }
%struct.ib_wc = type { i64, i64, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.iser_conn* }
%struct.iser_conn = type { i32 }
%struct.iser_tx_desc = type { i32 }

@IB_WC_SUCCESS = common dso_local global i64 0, align 8
@IB_WC_SEND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"expected opcode %d got %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"tx id %llx status %d vend_err %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iser_device*, i32)* @iser_drain_tx_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iser_drain_tx_cq(%struct.iser_device* %0, i32 %1) #0 {
  %3 = alloca %struct.iser_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_cq*, align 8
  %6 = alloca %struct.ib_wc, align 8
  %7 = alloca %struct.iser_tx_desc*, align 8
  %8 = alloca %struct.iser_conn*, align 8
  %9 = alloca i32, align 4
  store %struct.iser_device* %0, %struct.iser_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %11 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %10, i32 0, i32 0
  %12 = load %struct.ib_cq**, %struct.ib_cq*** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ib_cq*, %struct.ib_cq** %12, i64 %14
  %16 = load %struct.ib_cq*, %struct.ib_cq** %15, align 8
  store %struct.ib_cq* %16, %struct.ib_cq** %5, align 8
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %62, %2
  %18 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  %19 = call i32 @ib_poll_cq(%struct.ib_cq* %18, i32 1, %struct.ib_wc* %6)
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %65

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.iser_tx_desc*
  store %struct.iser_tx_desc* %24, %struct.iser_tx_desc** %7, align 8
  %25 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.iser_conn*, %struct.iser_conn** %27, align 8
  store %struct.iser_conn* %28, %struct.iser_conn** %8, align 8
  %29 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IB_WC_SUCCESS, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @IB_WC_SEND, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %7, align 8
  %40 = load %struct.iser_conn*, %struct.iser_conn** %8, align 8
  %41 = call i32 @iser_snd_completion(%struct.iser_tx_desc* %39, %struct.iser_conn* %40)
  br label %47

42:                                               ; preds = %33
  %43 = load i64, i64* @IB_WC_SEND, align 8
  %44 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 (i8*, i64, i64, ...) @iser_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %43, i64 %45)
  br label %47

47:                                               ; preds = %42, %38
  br label %62

48:                                               ; preds = %21
  %49 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i8*, i64, i64, ...) @iser_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %50, i64 %52, i32 %54)
  %56 = load %struct.iser_conn*, %struct.iser_conn** %8, align 8
  %57 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %56, i32 0, i32 0
  %58 = call i32 @atomic_dec(i32* %57)
  %59 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %7, align 8
  %60 = load %struct.iser_conn*, %struct.iser_conn** %8, align 8
  %61 = call i32 @iser_handle_comp_error(%struct.iser_tx_desc* %59, %struct.iser_conn* %60)
  br label %62

62:                                               ; preds = %48, %47
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %17

65:                                               ; preds = %17
  %66 = load i32, i32* %9, align 4
  ret i32 %66
}

declare dso_local i32 @ib_poll_cq(%struct.ib_cq*, i32, %struct.ib_wc*) #1

declare dso_local i32 @iser_snd_completion(%struct.iser_tx_desc*, %struct.iser_conn*) #1

declare dso_local i32 @iser_err(i8*, i64, i64, ...) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @iser_handle_comp_error(%struct.iser_tx_desc*, %struct.iser_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
