; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ethtool.c_qlcnic_irq_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ethtool.c_qlcnic_irq_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.qlcnic_adapter = type { i32, i32, %struct.qlcnic_hardware_context* }
%struct.qlcnic_hardware_context = type { i64, i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@__QLCNIC_RESETTING = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@QLCNIC_INTERRUPT_TEST = common dso_local global i32 0, align 4
@QLCNIC_CMD_INTRPT_TEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @qlcnic_irq_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_irq_test(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca %struct.qlcnic_hardware_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qlcnic_cmd_args, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.qlcnic_adapter* %10, %struct.qlcnic_adapter** %4, align 8
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %11, i32 0, i32 2
  %13 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %12, align 8
  store %struct.qlcnic_hardware_context* %13, %struct.qlcnic_hardware_context** %5, align 8
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %18 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = call i32 @qlcnic_83xx_interrupt_test(%struct.net_device* %21)
  store i32 %22, i32* %2, align 4
  br label %81

23:                                               ; preds = %1
  %24 = load i32, i32* @__QLCNIC_RESETTING, align 4
  %25 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %26 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %25, i32 0, i32 1
  %27 = call i64 @test_and_set_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %81

32:                                               ; preds = %23
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = load i32, i32* @QLCNIC_INTERRUPT_TEST, align 4
  %35 = call i32 @qlcnic_diag_alloc_res(%struct.net_device* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %72

39:                                               ; preds = %32
  %40 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %41 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %43 = load i32, i32* @QLCNIC_CMD_INTRPT_TEST, align 4
  %44 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %8, %struct.qlcnic_adapter* %42, i32 %43)
  %45 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %46 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %45, i32 0, i32 2
  %47 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %46, align 8
  %48 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 %49, i32* %53, align 4
  %54 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %55 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %54, %struct.qlcnic_cmd_args* %8)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %39
  br label %67

59:                                               ; preds = %39
  %60 = call i32 @usleep_range(i32 1000, i32 12000)
  %61 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %62 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %59, %58
  %68 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %8)
  %69 = load %struct.net_device*, %struct.net_device** %3, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @qlcnic_diag_free_res(%struct.net_device* %69, i32 %70)
  br label %72

72:                                               ; preds = %67, %38
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %75 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* @__QLCNIC_RESETTING, align 4
  %77 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %78 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %77, i32 0, i32 1
  %79 = call i32 @clear_bit(i32 %76, i32* %78)
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %72, %29, %20
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @qlcnic_83xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_interrupt_test(%struct.net_device*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_diag_alloc_res(%struct.net_device*, i32) #1

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

declare dso_local i32 @qlcnic_diag_free_res(%struct.net_device*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
