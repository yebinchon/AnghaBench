; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__*, i32, %struct.qlcnic_hardware_context* }
%struct.TYPE_2__ = type { %struct.qlcnic_host_sds_ring* }
%struct.qlcnic_host_sds_ring = type { i32 }
%struct.qlcnic_hardware_context = type { i64, i32 }

@IRQ_NONE = common dso_local global i64 0, align 8
@QLCNIC_INTERRUPT_TEST = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i64 0, align 8
@__QLCNIC_DEV_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @qlcnic_83xx_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca %struct.qlcnic_host_sds_ring*, align 8
  %8 = alloca %struct.qlcnic_hardware_context*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.qlcnic_adapter*
  store %struct.qlcnic_adapter* %10, %struct.qlcnic_adapter** %6, align 8
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %12 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %11, i32 0, i32 2
  %13 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %12, align 8
  store %struct.qlcnic_hardware_context* %13, %struct.qlcnic_hardware_context** %8, align 8
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %15 = call i64 @qlcnic_83xx_clear_legacy_intr(%struct.qlcnic_adapter* %14)
  %16 = load i64, i64* @IRQ_NONE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i64, i64* @IRQ_NONE, align 8
  store i64 %19, i64* %3, align 8
  br label %57

20:                                               ; preds = %2
  %21 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %22 = call i32 @qlcnic_83xx_poll_process_aen(%struct.qlcnic_adapter* %21)
  %23 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  %24 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @QLCNIC_INTERRUPT_TEST, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  %30 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  %33 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %34 = call i32 @qlcnic_83xx_enable_legacy_msix_mbx_intr(%struct.qlcnic_adapter* %33)
  %35 = load i64, i64* @IRQ_HANDLED, align 8
  store i64 %35, i64* %3, align 8
  br label %57

36:                                               ; preds = %20
  %37 = load i32, i32* @__QLCNIC_DEV_UP, align 4
  %38 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %39 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %38, i32 0, i32 1
  %40 = call i32 @test_bit(i32 %37, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %44 = call i32 @qlcnic_83xx_enable_legacy_msix_mbx_intr(%struct.qlcnic_adapter* %43)
  br label %55

45:                                               ; preds = %36
  %46 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %47 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %49, align 8
  %51 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %50, i64 0
  store %struct.qlcnic_host_sds_ring* %51, %struct.qlcnic_host_sds_ring** %7, align 8
  %52 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %7, align 8
  %53 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %52, i32 0, i32 0
  %54 = call i32 @napi_schedule(i32* %53)
  br label %55

55:                                               ; preds = %45, %42
  %56 = load i64, i64* @IRQ_HANDLED, align 8
  store i64 %56, i64* %3, align 8
  br label %57

57:                                               ; preds = %55, %28, %18
  %58 = load i64, i64* %3, align 8
  ret i64 %58
}

declare dso_local i64 @qlcnic_83xx_clear_legacy_intr(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_poll_process_aen(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_enable_legacy_msix_mbx_intr(%struct.qlcnic_adapter*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
