; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_ipath_process_mad.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_ipath_process_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_wc = type { i32 }
%struct.ib_grh = type { i32 }
%struct.ib_mad = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IB_MAD_RESULT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipath_process_mad(%struct.ib_device* %0, i32 %1, i32 %2, %struct.ib_wc* %3, %struct.ib_grh* %4, %struct.ib_mad* %5, %struct.ib_mad* %6) #0 {
  %8 = alloca %struct.ib_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ib_wc*, align 8
  %12 = alloca %struct.ib_grh*, align 8
  %13 = alloca %struct.ib_mad*, align 8
  %14 = alloca %struct.ib_mad*, align 8
  %15 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.ib_wc* %3, %struct.ib_wc** %11, align 8
  store %struct.ib_grh* %4, %struct.ib_grh** %12, align 8
  store %struct.ib_mad* %5, %struct.ib_mad** %13, align 8
  store %struct.ib_mad* %6, %struct.ib_mad** %14, align 8
  %16 = load %struct.ib_mad*, %struct.ib_mad** %13, align 8
  %17 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %33 [
    i32 129, label %20
    i32 128, label %20
    i32 130, label %27
  ]

20:                                               ; preds = %7, %7
  %21 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.ib_mad*, %struct.ib_mad** %13, align 8
  %25 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %26 = call i32 @process_subn(%struct.ib_device* %21, i32 %22, i32 %23, %struct.ib_mad* %24, %struct.ib_mad* %25)
  store i32 %26, i32* %15, align 4
  br label %36

27:                                               ; preds = %7
  %28 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.ib_mad*, %struct.ib_mad** %13, align 8
  %31 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %32 = call i32 @process_perf(%struct.ib_device* %28, i32 %29, %struct.ib_mad* %30, %struct.ib_mad* %31)
  store i32 %32, i32* %15, align 4
  br label %36

33:                                               ; preds = %7
  %34 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %34, i32* %15, align 4
  br label %35

35:                                               ; preds = %33
  br label %36

36:                                               ; preds = %35, %27, %20
  %37 = load i32, i32* %15, align 4
  ret i32 %37
}

declare dso_local i32 @process_subn(%struct.ib_device*, i32, i32, %struct.ib_mad*, %struct.ib_mad*) #1

declare dso_local i32 @process_perf(%struct.ib_device*, i32, %struct.ib_mad*, %struct.ib_mad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
