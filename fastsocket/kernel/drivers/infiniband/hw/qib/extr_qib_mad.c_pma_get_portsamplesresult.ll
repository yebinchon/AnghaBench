; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_pma_get_portsamplesresult.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_pma_get_portsamplesresult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pma_mad = type { i64 }
%struct.ib_device = type { i32 }
%struct.ib_pma_portsamplesresult = type { i32*, i8*, i8* }
%struct.qib_ibdev = type { i32 }
%struct.qib_devdata = type { i64 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32, i32)* }
%struct.qib_pportdata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.qib_ibport = type { i64, i32, i32* }
%struct.ib_smp = type { i32 }

@IB_PMA_CONG_HW_CONTROL_TIMER = common dso_local global i64 0, align 8
@IB_PMA_SAMPLE_STATUS_DONE = common dso_local global i64 0, align 8
@QIBPORTCNTR_PSSTAT = common dso_local global i32 0, align 4
@QIB_CONG_TIMER_PSINTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pma_mad*, %struct.ib_device*, i64)* @pma_get_portsamplesresult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pma_get_portsamplesresult(%struct.ib_pma_mad* %0, %struct.ib_device* %1, i64 %2) #0 {
  %4 = alloca %struct.ib_pma_mad*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ib_pma_portsamplesresult*, align 8
  %8 = alloca %struct.qib_ibdev*, align 8
  %9 = alloca %struct.qib_devdata*, align 8
  %10 = alloca %struct.qib_ibport*, align 8
  %11 = alloca %struct.qib_pportdata*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.ib_pma_mad* %0, %struct.ib_pma_mad** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %16 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.ib_pma_portsamplesresult*
  store %struct.ib_pma_portsamplesresult* %18, %struct.ib_pma_portsamplesresult** %7, align 8
  %19 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %20 = call %struct.qib_ibdev* @to_idev(%struct.ib_device* %19)
  store %struct.qib_ibdev* %20, %struct.qib_ibdev** %8, align 8
  %21 = load %struct.qib_ibdev*, %struct.qib_ibdev** %8, align 8
  %22 = call %struct.qib_devdata* @dd_from_dev(%struct.qib_ibdev* %21)
  store %struct.qib_devdata* %22, %struct.qib_devdata** %9, align 8
  %23 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call %struct.qib_ibport* @to_iport(%struct.ib_device* %23, i64 %24)
  store %struct.qib_ibport* %25, %struct.qib_ibport** %10, align 8
  %26 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %27 = call %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport* %26)
  store %struct.qib_pportdata* %27, %struct.qib_pportdata** %11, align 8
  %28 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %29 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @memset(i64 %30, i32 0, i32 8)
  %32 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %33 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %32, i32 0, i32 1
  %34 = load i64, i64* %12, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %37 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i8* @cpu_to_be16(i64 %38)
  %40 = load %struct.ib_pma_portsamplesresult*, %struct.ib_pma_portsamplesresult** %7, align 8
  %41 = getelementptr inbounds %struct.ib_pma_portsamplesresult, %struct.ib_pma_portsamplesresult* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %43 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @IB_PMA_CONG_HW_CONTROL_TIMER, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %3
  %49 = load i64, i64* @IB_PMA_SAMPLE_STATUS_DONE, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = load %struct.ib_pma_portsamplesresult*, %struct.ib_pma_portsamplesresult** %7, align 8
  %52 = getelementptr inbounds %struct.ib_pma_portsamplesresult, %struct.ib_pma_portsamplesresult* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  br label %86

53:                                               ; preds = %3
  %54 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %55 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %54, i32 0, i32 0
  %56 = load i64 (%struct.qib_pportdata*, i32)*, i64 (%struct.qib_pportdata*, i32)** %55, align 8
  %57 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %58 = load i32, i32* @QIBPORTCNTR_PSSTAT, align 4
  %59 = call i64 %56(%struct.qib_pportdata* %57, i32 %58)
  store i64 %59, i64* %13, align 8
  %60 = load i64, i64* %13, align 8
  %61 = call i8* @cpu_to_be16(i64 %60)
  %62 = load %struct.ib_pma_portsamplesresult*, %struct.ib_pma_portsamplesresult** %7, align 8
  %63 = getelementptr inbounds %struct.ib_pma_portsamplesresult, %struct.ib_pma_portsamplesresult* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* @IB_PMA_SAMPLE_STATUS_DONE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %85

67:                                               ; preds = %53
  %68 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %69 = call i32 @cache_hw_sample_counters(%struct.qib_pportdata* %68)
  %70 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %71 = call i32 @xmit_wait_get_value_delta(%struct.qib_pportdata* %70)
  %72 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %73 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 8
  %75 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %76 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %75, i32 0, i32 1
  %77 = load i32 (%struct.qib_pportdata*, i32, i32)*, i32 (%struct.qib_pportdata*, i32, i32)** %76, align 8
  %78 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %79 = load i32, i32* @QIB_CONG_TIMER_PSINTERVAL, align 4
  %80 = call i32 %77(%struct.qib_pportdata* %78, i32 %79, i32 0)
  %81 = load i64, i64* @IB_PMA_CONG_HW_CONTROL_TIMER, align 8
  %82 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %83 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i64 %81, i64* %84, align 8
  br label %85

85:                                               ; preds = %67, %53
  br label %86

86:                                               ; preds = %85, %48
  store i32 0, i32* %14, align 4
  br label %87

87:                                               ; preds = %111, %86
  %88 = load i32, i32* %14, align 4
  %89 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %90 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @ARRAY_SIZE(i32* %91)
  %93 = icmp slt i32 %88, %92
  br i1 %93, label %94, label %114

94:                                               ; preds = %87
  %95 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %96 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %97 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @get_cache_hw_sample_counters(%struct.qib_pportdata* %95, i32 %102)
  %104 = call i32 @cpu_to_be32(i32 %103)
  %105 = load %struct.ib_pma_portsamplesresult*, %struct.ib_pma_portsamplesresult** %7, align 8
  %106 = getelementptr inbounds %struct.ib_pma_portsamplesresult, %struct.ib_pma_portsamplesresult* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %14, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 %104, i32* %110, align 4
  br label %111

111:                                              ; preds = %94
  %112 = load i32, i32* %14, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %14, align 4
  br label %87

114:                                              ; preds = %87
  %115 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %116 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %115, i32 0, i32 1
  %117 = load i64, i64* %12, align 8
  %118 = call i32 @spin_unlock_irqrestore(i32* %116, i64 %117)
  %119 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %120 = bitcast %struct.ib_pma_mad* %119 to %struct.ib_smp*
  %121 = call i32 @reply(%struct.ib_smp* %120)
  ret i32 %121
}

declare dso_local %struct.qib_ibdev* @to_idev(%struct.ib_device*) #1

declare dso_local %struct.qib_devdata* @dd_from_dev(%struct.qib_ibdev*) #1

declare dso_local %struct.qib_ibport* @to_iport(%struct.ib_device*, i64) #1

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @cpu_to_be16(i64) #1

declare dso_local i32 @cache_hw_sample_counters(%struct.qib_pportdata*) #1

declare dso_local i32 @xmit_wait_get_value_delta(%struct.qib_pportdata*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @get_cache_hw_sample_counters(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @reply(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
