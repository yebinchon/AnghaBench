; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_ep_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_ep_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_endpoint = type { %struct.iser_conn* }
%struct.iser_conn = type { i64, i32 }

@ISER_CONN_UP = common dso_local global i64 0, align 8
@ISER_CONN_TERMINATING = common dso_local global i64 0, align 8
@ISER_CONN_DOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"ib conn %p rc = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_endpoint*, i32)* @iscsi_iser_ep_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_iser_ep_poll(%struct.iscsi_endpoint* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_endpoint*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iser_conn*, align 8
  %7 = alloca i32, align 4
  store %struct.iscsi_endpoint* %0, %struct.iscsi_endpoint** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %4, align 8
  %9 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %8, i32 0, i32 0
  %10 = load %struct.iser_conn*, %struct.iser_conn** %9, align 8
  store %struct.iser_conn* %10, %struct.iser_conn** %6, align 8
  %11 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %12 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %15 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ISER_CONN_UP, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @msecs_to_jiffies(i32 %20)
  %22 = call i32 @wait_event_interruptible_timeout(i32 %13, i32 %19, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %2
  %26 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %27 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ISER_CONN_TERMINATING, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %33 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ISER_CONN_DOWN, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31, %25
  store i32 -1, i32* %7, align 4
  br label %38

38:                                               ; preds = %37, %31, %2
  %39 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @iser_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.iser_conn* %39, i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %51

45:                                               ; preds = %38
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %51

49:                                               ; preds = %45
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %48, %44
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @iser_info(i8*, %struct.iser_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
