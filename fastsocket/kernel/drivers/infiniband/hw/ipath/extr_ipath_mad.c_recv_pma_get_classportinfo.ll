; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_recv_pma_get_classportinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_recv_pma_get_classportinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pma_mad = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ib_class_port_info = type { i32, i32, i32, i32 }
%struct.ib_smp = type { i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pma_mad*)* @recv_pma_get_classportinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_pma_get_classportinfo(%struct.ib_pma_mad* %0) #0 {
  %2 = alloca %struct.ib_pma_mad*, align 8
  %3 = alloca %struct.ib_class_port_info*, align 8
  store %struct.ib_pma_mad* %0, %struct.ib_pma_mad** %2, align 8
  %4 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %2, align 8
  %5 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.ib_class_port_info*
  store %struct.ib_class_port_info* %7, %struct.ib_class_port_info** %3, align 8
  %8 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %2, align 8
  %9 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @memset(i64 %10, i32 0, i32 8)
  %12 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %2, align 8
  %13 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %19 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %2, align 8
  %20 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %18
  store i32 %23, i32* %21, align 8
  br label %24

24:                                               ; preds = %17, %1
  %25 = call i32 @cpu_to_be16(i32 256)
  %26 = load %struct.ib_class_port_info*, %struct.ib_class_port_info** %3, align 8
  %27 = getelementptr inbounds %struct.ib_class_port_info, %struct.ib_class_port_info* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ib_class_port_info*, %struct.ib_class_port_info** %3, align 8
  %29 = getelementptr inbounds %struct.ib_class_port_info, %struct.ib_class_port_info* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load %struct.ib_class_port_info*, %struct.ib_class_port_info** %3, align 8
  %31 = getelementptr inbounds %struct.ib_class_port_info, %struct.ib_class_port_info* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = load %struct.ib_class_port_info*, %struct.ib_class_port_info** %3, align 8
  %33 = getelementptr inbounds %struct.ib_class_port_info, %struct.ib_class_port_info* %32, i32 0, i32 2
  store i32 18, i32* %33, align 4
  %34 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %2, align 8
  %35 = bitcast %struct.ib_pma_mad* %34 to %struct.ib_smp*
  %36 = call i32 @reply(%struct.ib_smp* %35)
  ret i32 %36
}

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @reply(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
