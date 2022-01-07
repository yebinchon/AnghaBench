; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_bnx2x_destroy_ramrod.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_bnx2x_destroy_ramrod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { %struct.cnic_local* }
%struct.cnic_local = type { %struct.cnic_context* }
%struct.cnic_context = type { i32, i64, i32, i32 }
%union.l5cm_specific_data = type { i32 }

@RAMROD_CMD_ID_COMMON_CFC_DEL = common dso_local global i32 0, align 4
@NONE_CONNECTION_TYPE = common dso_local global i32 0, align 4
@CNIC_RAMROD_TMO = common dso_local global i32 0, align 4
@CTX_FL_CID_ERROR = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*, i64)* @cnic_bnx2x_destroy_ramrod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_bnx2x_destroy_ramrod(%struct.cnic_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cnic_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cnic_local*, align 8
  %7 = alloca %struct.cnic_context*, align 8
  %8 = alloca %union.l5cm_specific_data, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %12 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %11, i32 0, i32 0
  %13 = load %struct.cnic_local*, %struct.cnic_local** %12, align 8
  store %struct.cnic_local* %13, %struct.cnic_local** %6, align 8
  %14 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %15 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %14, i32 0, i32 0
  %16 = load %struct.cnic_context*, %struct.cnic_context** %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %16, i64 %17
  store %struct.cnic_context* %18, %struct.cnic_context** %7, align 8
  %19 = load %struct.cnic_context*, %struct.cnic_context** %7, align 8
  %20 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %19, i32 0, i32 2
  %21 = call i32 @init_waitqueue_head(i32* %20)
  %22 = load %struct.cnic_context*, %struct.cnic_context** %7, align 8
  %23 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = call i32 @memset(%union.l5cm_specific_data* %8, i32 0, i32 4)
  %25 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %26 = load %struct.cnic_context*, %struct.cnic_context** %7, align 8
  %27 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @BNX2X_HW_CID(%struct.cnic_local* %25, i32 %28)
  store i64 %29, i64* %10, align 8
  %30 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %31 = load i32, i32* @RAMROD_CMD_ID_COMMON_CFC_DEL, align 4
  %32 = load i64, i64* %10, align 8
  %33 = load i32, i32* @NONE_CONNECTION_TYPE, align 4
  %34 = call i32 @cnic_submit_kwqe_16(%struct.cnic_dev* %30, i32 %31, i64 %32, i32 %33, %union.l5cm_specific_data* %8)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %2
  %38 = load %struct.cnic_context*, %struct.cnic_context** %7, align 8
  %39 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.cnic_context*, %struct.cnic_context** %7, align 8
  %42 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @CNIC_RAMROD_TMO, align 4
  %45 = call i32 @wait_event_timeout(i32 %40, i64 %43, i32 %44)
  %46 = load i32, i32* @CTX_FL_CID_ERROR, align 4
  %47 = load %struct.cnic_context*, %struct.cnic_context** %7, align 8
  %48 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %47, i32 0, i32 0
  %49 = call i32 @test_bit(i32 %46, i32* %48)
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %37
  %53 = load i32, i32* @EBUSY, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %57

55:                                               ; preds = %37
  br label %56

56:                                               ; preds = %55, %2
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %52
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @memset(%union.l5cm_specific_data*, i32, i32) #1

declare dso_local i64 @BNX2X_HW_CID(%struct.cnic_local*, i32) #1

declare dso_local i32 @cnic_submit_kwqe_16(%struct.cnic_dev*, i32, i64, i32, %union.l5cm_specific_data*) #1

declare dso_local i32 @wait_event_timeout(i32, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
