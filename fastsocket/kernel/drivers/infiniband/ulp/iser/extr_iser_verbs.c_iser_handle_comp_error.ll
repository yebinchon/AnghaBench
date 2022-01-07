; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_handle_comp_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_handle_comp_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.iser_tx_desc = type { i64 }
%struct.iser_conn = type { i64, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@ISCSI_TX_DATAOUT = common dso_local global i64 0, align 8
@ig = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ISER_CONN_UP = common dso_local global i32 0, align 4
@ISER_CONN_TERMINATING = common dso_local global i32 0, align 4
@ISCSI_ERR_CONN_FAILED = common dso_local global i32 0, align 4
@ISER_CONN_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iser_tx_desc*, %struct.iser_conn*)* @iser_handle_comp_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iser_handle_comp_error(%struct.iser_tx_desc* %0, %struct.iser_conn* %1) #0 {
  %3 = alloca %struct.iser_tx_desc*, align 8
  %4 = alloca %struct.iser_conn*, align 8
  store %struct.iser_tx_desc* %0, %struct.iser_tx_desc** %3, align 8
  store %struct.iser_conn* %1, %struct.iser_conn** %4, align 8
  %5 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %3, align 8
  %6 = icmp ne %struct.iser_tx_desc* %5, null
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %3, align 8
  %9 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ISCSI_TX_DATAOUT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ig, i32 0, i32 0), align 4
  %15 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %3, align 8
  %16 = call i32 @kmem_cache_free(i32 %14, %struct.iser_tx_desc* %15)
  br label %17

17:                                               ; preds = %13, %7, %2
  %18 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %19 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %17
  %23 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %24 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %23, i32 0, i32 4
  %25 = call i64 @atomic_read(i32* %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %22
  %28 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %29 = load i32, i32* @ISER_CONN_UP, align 4
  %30 = load i32, i32* @ISER_CONN_TERMINATING, align 4
  %31 = call i64 @iser_conn_state_comp_exch(%struct.iser_conn* %28, i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %35 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %34, i32 0, i32 3
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ISCSI_ERR_CONN_FAILED, align 4
  %40 = call i32 @iscsi_conn_failure(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %33, %27
  %42 = load i32, i32* @ISER_CONN_DOWN, align 4
  %43 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %44 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %46 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %45, i32 0, i32 1
  %47 = call i32 @wake_up_interruptible(i32* %46)
  br label %48

48:                                               ; preds = %41, %22, %17
  ret void
}

declare dso_local i32 @kmem_cache_free(i32, %struct.iser_tx_desc*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @iser_conn_state_comp_exch(%struct.iser_conn*, i32, i32) #1

declare dso_local i32 @iscsi_conn_failure(i32, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
