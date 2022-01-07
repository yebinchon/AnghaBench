; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_qib_process_mad.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_qib_process_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_wc = type { i32 }
%struct.ib_grh = type { i32 }
%struct.ib_mad = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.qib_ibport = type { i32 }
%struct.qib_pportdata = type { i32 }

@qib_cc_table_size = common dso_local global i32 0, align 4
@IB_MAD_RESULT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_process_mad(%struct.ib_device* %0, i32 %1, i32 %2, %struct.ib_wc* %3, %struct.ib_grh* %4, %struct.ib_mad* %5, %struct.ib_mad* %6) #0 {
  %8 = alloca %struct.ib_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ib_wc*, align 8
  %12 = alloca %struct.ib_grh*, align 8
  %13 = alloca %struct.ib_mad*, align 8
  %14 = alloca %struct.ib_mad*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.qib_ibport*, align 8
  %17 = alloca %struct.qib_pportdata*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.ib_wc* %3, %struct.ib_wc** %11, align 8
  store %struct.ib_grh* %4, %struct.ib_grh** %12, align 8
  store %struct.ib_mad* %5, %struct.ib_mad** %13, align 8
  store %struct.ib_mad* %6, %struct.ib_mad** %14, align 8
  %18 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call %struct.qib_ibport* @to_iport(%struct.ib_device* %18, i32 %19)
  store %struct.qib_ibport* %20, %struct.qib_ibport** %16, align 8
  %21 = load %struct.qib_ibport*, %struct.qib_ibport** %16, align 8
  %22 = call %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport* %21)
  store %struct.qib_pportdata* %22, %struct.qib_pportdata** %17, align 8
  %23 = load %struct.ib_mad*, %struct.ib_mad** %13, align 8
  %24 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %57 [
    i32 129, label %27
    i32 128, label %27
    i32 130, label %34
    i32 131, label %40
  ]

27:                                               ; preds = %7, %7
  %28 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.ib_mad*, %struct.ib_mad** %13, align 8
  %32 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %33 = call i32 @process_subn(%struct.ib_device* %28, i32 %29, i32 %30, %struct.ib_mad* %31, %struct.ib_mad* %32)
  store i32 %33, i32* %15, align 4
  br label %60

34:                                               ; preds = %7
  %35 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.ib_mad*, %struct.ib_mad** %13, align 8
  %38 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %39 = call i32 @process_perf(%struct.ib_device* %35, i32 %36, %struct.ib_mad* %37, %struct.ib_mad* %38)
  store i32 %39, i32* %15, align 4
  br label %60

40:                                               ; preds = %7
  %41 = load %struct.qib_pportdata*, %struct.qib_pportdata** %17, align 8
  %42 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @qib_cc_table_size, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45, %40
  %49 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %49, i32* %15, align 4
  br label %60

50:                                               ; preds = %45
  %51 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.ib_mad*, %struct.ib_mad** %13, align 8
  %55 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %56 = call i32 @process_cc(%struct.ib_device* %51, i32 %52, i32 %53, %struct.ib_mad* %54, %struct.ib_mad* %55)
  store i32 %56, i32* %15, align 4
  br label %60

57:                                               ; preds = %7
  %58 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %58, i32* %15, align 4
  br label %59

59:                                               ; preds = %57
  br label %60

60:                                               ; preds = %59, %50, %48, %34, %27
  %61 = load i32, i32* %15, align 4
  ret i32 %61
}

declare dso_local %struct.qib_ibport* @to_iport(%struct.ib_device*, i32) #1

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i32 @process_subn(%struct.ib_device*, i32, i32, %struct.ib_mad*, %struct.ib_mad*) #1

declare dso_local i32 @process_perf(%struct.ib_device*, i32, %struct.ib_mad*, %struct.ib_mad*) #1

declare dso_local i32 @process_cc(%struct.ib_device*, i32, i32, %struct.ib_mad*, %struct.ib_mad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
