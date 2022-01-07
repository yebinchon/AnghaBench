; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_pma_get_classportinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_pma_get_classportinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pma_mad = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ib_device = type { i32 }
%struct.ib_class_port_info = type { i32, i32, i32*, i32, i32 }
%struct.qib_devdata = type { i32 }
%struct.ib_smp = type { i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@IB_PMA_CLASS_CAP_EXT_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pma_mad*, %struct.ib_device*)* @pma_get_classportinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pma_get_classportinfo(%struct.ib_pma_mad* %0, %struct.ib_device* %1) #0 {
  %3 = alloca %struct.ib_pma_mad*, align 8
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.ib_class_port_info*, align 8
  %6 = alloca %struct.qib_devdata*, align 8
  store %struct.ib_pma_mad* %0, %struct.ib_pma_mad** %3, align 8
  store %struct.ib_device* %1, %struct.ib_device** %4, align 8
  %7 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %3, align 8
  %8 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.ib_class_port_info*
  store %struct.ib_class_port_info* %10, %struct.ib_class_port_info** %5, align 8
  %11 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %12 = call %struct.qib_devdata* @dd_from_ibdev(%struct.ib_device* %11)
  store %struct.qib_devdata* %12, %struct.qib_devdata** %6, align 8
  %13 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %3, align 8
  %14 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @memset(i64 %15, i32 0, i32 8)
  %17 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %3, align 8
  %18 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %24 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %3, align 8
  %25 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %23
  store i32 %28, i32* %26, align 8
  br label %29

29:                                               ; preds = %22, %2
  %30 = load %struct.ib_class_port_info*, %struct.ib_class_port_info** %5, align 8
  %31 = getelementptr inbounds %struct.ib_class_port_info, %struct.ib_class_port_info* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.ib_class_port_info*, %struct.ib_class_port_info** %5, align 8
  %33 = getelementptr inbounds %struct.ib_class_port_info, %struct.ib_class_port_info* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  %34 = load i32, i32* @IB_PMA_CLASS_CAP_EXT_WIDTH, align 4
  %35 = load %struct.ib_class_port_info*, %struct.ib_class_port_info** %5, align 8
  %36 = getelementptr inbounds %struct.ib_class_port_info, %struct.ib_class_port_info* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %38 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 7
  %41 = load %struct.ib_class_port_info*, %struct.ib_class_port_info** %5, align 8
  %42 = getelementptr inbounds %struct.ib_class_port_info, %struct.ib_class_port_info* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 %40, i32* %44, align 4
  %45 = load %struct.ib_class_port_info*, %struct.ib_class_port_info** %5, align 8
  %46 = getelementptr inbounds %struct.ib_class_port_info, %struct.ib_class_port_info* %45, i32 0, i32 3
  store i32 18, i32* %46, align 8
  %47 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %3, align 8
  %48 = bitcast %struct.ib_pma_mad* %47 to %struct.ib_smp*
  %49 = call i32 @reply(%struct.ib_smp* %48)
  ret i32 %49
}

declare dso_local %struct.qib_devdata* @dd_from_ibdev(%struct.ib_device*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @reply(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
