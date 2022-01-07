; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_pma_set_portcounters_cong.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_pma_set_portcounters_cong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pma_mad = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ib_device = type { i32 }
%struct.qib_ibport = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qib_pportdata = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.qib_devdata = type { i32 (%struct.qib_pportdata*, i32, i32)* }
%struct.qib_verbs_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@IB_PMA_SEL_CONG_XMIT = common dso_local global i32 0, align 4
@QIB_CONG_TIMER_PSINTERVAL = common dso_local global i32 0, align 4
@IB_PMA_SEL_CONG_PORT_DATA = common dso_local global i32 0, align 4
@IB_PMA_SEL_CONG_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pma_mad*, %struct.ib_device*, i32)* @pma_set_portcounters_cong to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pma_set_portcounters_cong(%struct.ib_pma_mad* %0, %struct.ib_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_pma_mad*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qib_ibport*, align 8
  %8 = alloca %struct.qib_pportdata*, align 8
  %9 = alloca %struct.qib_devdata*, align 8
  %10 = alloca %struct.qib_verbs_counters, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.ib_pma_mad* %0, %struct.ib_pma_mad** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.qib_ibport* @to_iport(%struct.ib_device* %14, i32 %15)
  store %struct.qib_ibport* %16, %struct.qib_ibport** %7, align 8
  %17 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %18 = call %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport* %17)
  store %struct.qib_pportdata* %18, %struct.qib_pportdata** %8, align 8
  %19 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %20 = call %struct.qib_devdata* @dd_from_ppd(%struct.qib_pportdata* %19)
  store %struct.qib_devdata* %20, %struct.qib_devdata** %9, align 8
  %21 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %22 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @be32_to_cpu(i32 %24)
  %26 = ashr i32 %25, 24
  %27 = and i32 %26, 255
  store i32 %27, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %28 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %29 = call i32 @qib_get_counters(%struct.qib_pportdata* %28, %struct.qib_verbs_counters* %10)
  %30 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %31 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @pma_get_portcounters_cong(%struct.ib_pma_mad* %30, %struct.ib_device* %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @IB_PMA_SEL_CONG_XMIT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %3
  %39 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %40 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %13, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %45 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %48 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %47, i32 0, i32 0
  %49 = load i32 (%struct.qib_pportdata*, i32, i32)*, i32 (%struct.qib_pportdata*, i32, i32)** %48, align 8
  %50 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %51 = load i32, i32* @QIB_CONG_TIMER_PSINTERVAL, align 4
  %52 = call i32 %49(%struct.qib_pportdata* %50, i32 %51, i32 0)
  %53 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %54 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %13, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  br label %58

58:                                               ; preds = %38, %3
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @IB_PMA_SEL_CONG_PORT_DATA, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 12
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %67 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %66, i32 0, i32 13
  store i32 %65, i32* %67, align 4
  %68 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 11
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %71 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %70, i32 0, i32 12
  store i32 %69, i32* %71, align 8
  %72 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 10
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %75 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %74, i32 0, i32 11
  store i32 %73, i32* %75, align 4
  %76 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 9
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %79 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %78, i32 0, i32 10
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %63, %58
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @IB_PMA_SEL_CONG_ALL, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %124

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 8
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %89 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %88, i32 0, i32 9
  store i32 %87, i32* %89, align 4
  %90 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 7
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %93 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %92, i32 0, i32 8
  store i32 %91, i32* %93, align 8
  %94 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %97 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %96, i32 0, i32 7
  store i32 %95, i32* %97, align 4
  %98 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %101 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %100, i32 0, i32 6
  store i32 %99, i32* %101, align 8
  %102 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %105 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 4
  %106 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %109 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 8
  %110 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %113 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  %114 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %117 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %119 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %118, i32 0, i32 1
  store i64 0, i64* %119, align 8
  %120 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %123 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  br label %124

124:                                              ; preds = %85, %80
  %125 = load i32, i32* %12, align 4
  ret i32 %125
}

declare dso_local %struct.qib_ibport* @to_iport(%struct.ib_device*, i32) #1

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local %struct.qib_devdata* @dd_from_ppd(%struct.qib_pportdata*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @qib_get_counters(%struct.qib_pportdata*, %struct.qib_verbs_counters*) #1

declare dso_local i32 @pma_get_portcounters_cong(%struct.ib_pma_mad*, %struct.ib_device*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
