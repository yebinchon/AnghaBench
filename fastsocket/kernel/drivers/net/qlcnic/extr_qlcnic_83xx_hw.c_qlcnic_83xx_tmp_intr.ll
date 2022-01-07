; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_tmp_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_tmp_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_host_sds_ring = type { %struct.qlcnic_adapter* }
%struct.qlcnic_adapter = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 (%struct.qlcnic_adapter*)* }

@QLCNIC_MSIX_ENABLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @qlcnic_83xx_tmp_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.qlcnic_host_sds_ring*, align 8
  %7 = alloca %struct.qlcnic_adapter*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.qlcnic_host_sds_ring*
  store %struct.qlcnic_host_sds_ring* %9, %struct.qlcnic_host_sds_ring** %6, align 8
  %10 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %6, align 8
  %11 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %10, i32 0, i32 0
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %11, align 8
  store %struct.qlcnic_adapter* %12, %struct.qlcnic_adapter** %7, align 8
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %14 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %33

20:                                               ; preds = %2
  %21 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %22 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64 (%struct.qlcnic_adapter*)*, i64 (%struct.qlcnic_adapter*)** %24, align 8
  %26 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %27 = call i64 %25(%struct.qlcnic_adapter* %26)
  %28 = load i64, i64* @IRQ_NONE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i64, i64* @IRQ_NONE, align 8
  store i64 %31, i64* %3, align 8
  br label %44

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32, %19
  %34 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %35 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %41 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %6, align 8
  %42 = call i32 @qlcnic_83xx_enable_intr(%struct.qlcnic_adapter* %40, %struct.qlcnic_host_sds_ring* %41)
  %43 = load i64, i64* @IRQ_HANDLED, align 8
  store i64 %43, i64* %3, align 8
  br label %44

44:                                               ; preds = %33, %30
  %45 = load i64, i64* %3, align 8
  ret i64 %45
}

declare dso_local i32 @qlcnic_83xx_enable_intr(%struct.qlcnic_adapter*, %struct.qlcnic_host_sds_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
