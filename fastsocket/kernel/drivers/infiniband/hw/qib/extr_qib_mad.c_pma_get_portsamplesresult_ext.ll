; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_pma_get_portsamplesresult_ext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_pma_get_portsamplesresult_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pma_mad = type { i64 }
%struct.ib_device = type { i32 }
%struct.ib_pma_portsamplesresult_ext = type { i32*, i32, i8*, i8* }
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pma_mad*, %struct.ib_device*, i64)* @pma_get_portsamplesresult_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pma_get_portsamplesresult_ext(%struct.ib_pma_mad* %0, %struct.ib_device* %1, i64 %2) #0 {
  %4 = alloca %struct.ib_pma_mad*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ib_pma_portsamplesresult_ext*, align 8
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
  %18 = inttoptr i64 %17 to %struct.ib_pma_portsamplesresult_ext*
  store %struct.ib_pma_portsamplesresult_ext* %18, %struct.ib_pma_portsamplesresult_ext** %7, align 8
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
  %40 = load %struct.ib_pma_portsamplesresult_ext*, %struct.ib_pma_portsamplesresult_ext** %7, align 8
  %41 = getelementptr inbounds %struct.ib_pma_portsamplesresult_ext, %struct.ib_pma_portsamplesresult_ext* %40, i32 0, i32 3
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
  %51 = load %struct.ib_pma_portsamplesresult_ext*, %struct.ib_pma_portsamplesresult_ext** %7, align 8
  %52 = getelementptr inbounds %struct.ib_pma_portsamplesresult_ext, %struct.ib_pma_portsamplesresult_ext* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  br label %89

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
  %62 = load %struct.ib_pma_portsamplesresult_ext*, %struct.ib_pma_portsamplesresult_ext** %7, align 8
  %63 = getelementptr inbounds %struct.ib_pma_portsamplesresult_ext, %struct.ib_pma_portsamplesresult_ext* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  %64 = call i32 @cpu_to_be32(i32 -2147483648)
  %65 = load %struct.ib_pma_portsamplesresult_ext*, %struct.ib_pma_portsamplesresult_ext** %7, align 8
  %66 = getelementptr inbounds %struct.ib_pma_portsamplesresult_ext, %struct.ib_pma_portsamplesresult_ext* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load i64, i64* %13, align 8
  %68 = load i64, i64* @IB_PMA_SAMPLE_STATUS_DONE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %88

70:                                               ; preds = %53
  %71 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %72 = call i32 @cache_hw_sample_counters(%struct.qib_pportdata* %71)
  %73 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %74 = call i32 @xmit_wait_get_value_delta(%struct.qib_pportdata* %73)
  %75 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %76 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 8
  %78 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %79 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %78, i32 0, i32 1
  %80 = load i32 (%struct.qib_pportdata*, i32, i32)*, i32 (%struct.qib_pportdata*, i32, i32)** %79, align 8
  %81 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %82 = load i32, i32* @QIB_CONG_TIMER_PSINTERVAL, align 4
  %83 = call i32 %80(%struct.qib_pportdata* %81, i32 %82, i32 0)
  %84 = load i64, i64* @IB_PMA_CONG_HW_CONTROL_TIMER, align 8
  %85 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %86 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i64 %84, i64* %87, align 8
  br label %88

88:                                               ; preds = %70, %53
  br label %89

89:                                               ; preds = %88, %48
  store i32 0, i32* %14, align 4
  br label %90

90:                                               ; preds = %114, %89
  %91 = load i32, i32* %14, align 4
  %92 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %93 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @ARRAY_SIZE(i32* %94)
  %96 = icmp slt i32 %91, %95
  br i1 %96, label %97, label %117

97:                                               ; preds = %90
  %98 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %99 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %100 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @get_cache_hw_sample_counters(%struct.qib_pportdata* %98, i32 %105)
  %107 = call i32 @cpu_to_be64(i32 %106)
  %108 = load %struct.ib_pma_portsamplesresult_ext*, %struct.ib_pma_portsamplesresult_ext** %7, align 8
  %109 = getelementptr inbounds %struct.ib_pma_portsamplesresult_ext, %struct.ib_pma_portsamplesresult_ext* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %107, i32* %113, align 4
  br label %114

114:                                              ; preds = %97
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %14, align 4
  br label %90

117:                                              ; preds = %90
  %118 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %119 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %118, i32 0, i32 1
  %120 = load i64, i64* %12, align 8
  %121 = call i32 @spin_unlock_irqrestore(i32* %119, i64 %120)
  %122 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %123 = bitcast %struct.ib_pma_mad* %122 to %struct.ib_smp*
  %124 = call i32 @reply(%struct.ib_smp* %123)
  ret i32 %124
}

declare dso_local %struct.qib_ibdev* @to_idev(%struct.ib_device*) #1

declare dso_local %struct.qib_devdata* @dd_from_dev(%struct.qib_ibdev*) #1

declare dso_local %struct.qib_ibport* @to_iport(%struct.ib_device*, i64) #1

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @cpu_to_be16(i64) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @cache_hw_sample_counters(%struct.qib_pportdata*) #1

declare dso_local i32 @xmit_wait_get_value_delta(%struct.qib_pportdata*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @get_cache_hw_sample_counters(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @reply(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
