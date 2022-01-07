; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_conn_terminate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_conn_terminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_conn = type { i64, i32, i32 }

@ISER_CONN_UP = common dso_local global i32 0, align 4
@ISER_CONN_TERMINATING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to disconnect, conn: 0x%p err %d\0A\00", align 1
@ISER_CONN_DOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iser_conn_terminate(%struct.iser_conn* %0) #0 {
  %2 = alloca %struct.iser_conn*, align 8
  %3 = alloca i32, align 4
  store %struct.iser_conn* %0, %struct.iser_conn** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %5 = load i32, i32* @ISER_CONN_UP, align 4
  %6 = load i32, i32* @ISER_CONN_TERMINATING, align 4
  %7 = call i32 @iser_conn_state_comp_exch(%struct.iser_conn* %4, i32 %5, i32 %6)
  %8 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %9 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @rdma_disconnect(i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @iser_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.iser_conn* %15, i32 %16)
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %20 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %23 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ISER_CONN_DOWN, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @wait_event_interruptible(i32 %21, i32 %27)
  %29 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %30 = call i32 @iser_conn_put(%struct.iser_conn* %29, i32 1)
  ret void
}

declare dso_local i32 @iser_conn_state_comp_exch(%struct.iser_conn*, i32, i32) #1

declare dso_local i32 @rdma_disconnect(i32) #1

declare dso_local i32 @iser_err(i8*, %struct.iser_conn*, i32) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @iser_conn_put(%struct.iser_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
