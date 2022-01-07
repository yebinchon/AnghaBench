; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_cc_get_congestion_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_cc_get_congestion_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cc_mad = type { i64 }
%struct.ib_device = type { i32 }
%struct.ib_cc_info_attr = type { i32, i64 }
%struct.qib_ibport = type { i32 }
%struct.qib_pportdata = type { i32 }
%struct.ib_smp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_cc_mad*, %struct.ib_device*, i32)* @cc_get_congestion_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_get_congestion_info(%struct.ib_cc_mad* %0, %struct.ib_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_cc_mad*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_cc_info_attr*, align 8
  %8 = alloca %struct.qib_ibport*, align 8
  %9 = alloca %struct.qib_pportdata*, align 8
  store %struct.ib_cc_mad* %0, %struct.ib_cc_mad** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ib_cc_mad*, %struct.ib_cc_mad** %4, align 8
  %11 = getelementptr inbounds %struct.ib_cc_mad, %struct.ib_cc_mad* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.ib_cc_info_attr*
  store %struct.ib_cc_info_attr* %13, %struct.ib_cc_info_attr** %7, align 8
  %14 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.qib_ibport* @to_iport(%struct.ib_device* %14, i32 %15)
  store %struct.qib_ibport* %16, %struct.qib_ibport** %8, align 8
  %17 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %18 = call %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport* %17)
  store %struct.qib_pportdata* %18, %struct.qib_pportdata** %9, align 8
  %19 = load %struct.ib_cc_mad*, %struct.ib_cc_mad** %4, align 8
  %20 = getelementptr inbounds %struct.ib_cc_mad, %struct.ib_cc_mad* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @memset(i64 %21, i32 0, i32 8)
  %23 = load %struct.ib_cc_info_attr*, %struct.ib_cc_info_attr** %7, align 8
  %24 = getelementptr inbounds %struct.ib_cc_info_attr, %struct.ib_cc_info_attr* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %26 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ib_cc_info_attr*, %struct.ib_cc_info_attr** %7, align 8
  %29 = getelementptr inbounds %struct.ib_cc_info_attr, %struct.ib_cc_info_attr* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.ib_cc_mad*, %struct.ib_cc_mad** %4, align 8
  %31 = bitcast %struct.ib_cc_mad* %30 to %struct.ib_smp*
  %32 = call i32 @reply(%struct.ib_smp* %31)
  ret i32 %32
}

declare dso_local %struct.qib_ibport* @to_iport(%struct.ib_device*, i32) #1

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @reply(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
