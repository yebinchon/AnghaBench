; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_cache_hw_sample_counters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_cache_hw_sample_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { %struct.TYPE_4__, %struct.qib_ibport }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8* }
%struct.qib_ibport = type { i32 }

@IB_PMA_PORT_XMIT_DATA = common dso_local global i32 0, align 4
@IB_PMA_PORT_RCV_DATA = common dso_local global i32 0, align 4
@IB_PMA_PORT_XMIT_PKTS = common dso_local global i32 0, align 4
@IB_PMA_PORT_RCV_PKTS = common dso_local global i32 0, align 4
@IB_PMA_PORT_XMIT_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*)* @cache_hw_sample_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_hw_sample_counters(%struct.qib_pportdata* %0) #0 {
  %2 = alloca %struct.qib_pportdata*, align 8
  %3 = alloca %struct.qib_ibport*, align 8
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %2, align 8
  %4 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %5 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %4, i32 0, i32 1
  store %struct.qib_ibport* %5, %struct.qib_ibport** %3, align 8
  %6 = load %struct.qib_ibport*, %struct.qib_ibport** %3, align 8
  %7 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %8 = load i32, i32* @IB_PMA_PORT_XMIT_DATA, align 4
  %9 = call i8* @get_counter(%struct.qib_ibport* %6, %struct.qib_pportdata* %7, i32 %8)
  %10 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %11 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 4
  store i8* %9, i8** %13, align 8
  %14 = load %struct.qib_ibport*, %struct.qib_ibport** %3, align 8
  %15 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %16 = load i32, i32* @IB_PMA_PORT_RCV_DATA, align 4
  %17 = call i8* @get_counter(%struct.qib_ibport* %14, %struct.qib_pportdata* %15, i32 %16)
  %18 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %19 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  store i8* %17, i8** %21, align 8
  %22 = load %struct.qib_ibport*, %struct.qib_ibport** %3, align 8
  %23 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %24 = load i32, i32* @IB_PMA_PORT_XMIT_PKTS, align 4
  %25 = call i8* @get_counter(%struct.qib_ibport* %22, %struct.qib_pportdata* %23, i32 %24)
  %26 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %27 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  store i8* %25, i8** %29, align 8
  %30 = load %struct.qib_ibport*, %struct.qib_ibport** %3, align 8
  %31 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %32 = load i32, i32* @IB_PMA_PORT_RCV_PKTS, align 4
  %33 = call i8* @get_counter(%struct.qib_ibport* %30, %struct.qib_pportdata* %31, i32 %32)
  %34 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %35 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i8* %33, i8** %37, align 8
  %38 = load %struct.qib_ibport*, %struct.qib_ibport** %3, align 8
  %39 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %40 = load i32, i32* @IB_PMA_PORT_XMIT_WAIT, align 4
  %41 = call i8* @get_counter(%struct.qib_ibport* %38, %struct.qib_pportdata* %39, i32 %40)
  %42 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %43 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i8* %41, i8** %45, align 8
  ret void
}

declare dso_local i8* @get_counter(%struct.qib_ibport*, %struct.qib_pportdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
