; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_sqp.c_ehca_process_mad.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_sqp.c_ehca_process_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i64 }
%struct.ib_wc = type { i32 }
%struct.ib_grh = type { i32 }
%struct.ib_mad = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@IB_MAD_RESULT_FAILURE = common dso_local global i32 0, align 4
@IB_MGMT_CLASS_PERF_MGMT = common dso_local global i64 0, align 8
@IB_MAD_RESULT_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"port_num=%x src_qp=%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ehca_process_mad(%struct.ib_device* %0, i32 %1, i64 %2, %struct.ib_wc* %3, %struct.ib_grh* %4, %struct.ib_mad* %5, %struct.ib_mad* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.ib_wc*, align 8
  %13 = alloca %struct.ib_grh*, align 8
  %14 = alloca %struct.ib_mad*, align 8
  %15 = alloca %struct.ib_mad*, align 8
  %16 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store %struct.ib_wc* %3, %struct.ib_wc** %12, align 8
  store %struct.ib_grh* %4, %struct.ib_grh** %13, align 8
  store %struct.ib_mad* %5, %struct.ib_mad** %14, align 8
  store %struct.ib_mad* %6, %struct.ib_mad** %15, align 8
  %17 = load i64, i64* %11, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %7
  %20 = load i64, i64* %11, align 8
  %21 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %22 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %20, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %27 = icmp ne %struct.ib_wc* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25, %19, %7
  %29 = load i32, i32* @IB_MAD_RESULT_FAILURE, align 4
  store i32 %29, i32* %8, align 4
  br label %54

30:                                               ; preds = %25
  %31 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %32 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IB_MGMT_CLASS_PERF_MGMT, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %38, i32* %8, align 4
  br label %54

39:                                               ; preds = %30
  %40 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %43 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ehca_dbg(%struct.ib_device* %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %41, i32 %44)
  %46 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %47 = load i64, i64* %11, align 8
  %48 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %49 = load %struct.ib_grh*, %struct.ib_grh** %13, align 8
  %50 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %51 = load %struct.ib_mad*, %struct.ib_mad** %15, align 8
  %52 = call i32 @ehca_process_perf(%struct.ib_device* %46, i64 %47, %struct.ib_wc* %48, %struct.ib_grh* %49, %struct.ib_mad* %50, %struct.ib_mad* %51)
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %16, align 4
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %39, %37, %28
  %55 = load i32, i32* %8, align 4
  ret i32 %55
}

declare dso_local i32 @ehca_dbg(%struct.ib_device*, i8*, i64, i32) #1

declare dso_local i32 @ehca_process_perf(%struct.ib_device*, i64, %struct.ib_wc*, %struct.ib_grh*, %struct.ib_mad*, %struct.ib_mad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
