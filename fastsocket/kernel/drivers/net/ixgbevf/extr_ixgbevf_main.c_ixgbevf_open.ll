; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgbevf_adapter = type { i32, i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@__IXGBEVF_TESTING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IXGBE_ERR_MBX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Unable to start - perhaps the PF Driver isn't up yet\0A\00", align 1
@IXGBE_VTEICR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ixgbevf_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ixgbevf_adapter*, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.ixgbevf_adapter* %8, %struct.ixgbevf_adapter** %4, align 8
  %9 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %9, i32 0, i32 2
  store %struct.ixgbe_hw* %10, %struct.ixgbe_hw** %5, align 8
  %11 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %93

18:                                               ; preds = %1
  %19 = load i32, i32* @__IXGBEVF_TESTING, align 4
  %20 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %21 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %20, i32 0, i32 0
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %93

27:                                               ; preds = %18
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %29 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %34 = call i32 @ixgbevf_reset(%struct.ixgbevf_adapter* %33)
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %36 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @IXGBE_ERR_MBX, align 4
  store i32 %40, i32* %6, align 4
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %91

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %27
  %44 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %45 = call i32 @ixgbevf_setup_queues(%struct.ixgbevf_adapter* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %88

49:                                               ; preds = %43
  %50 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %51 = call i32 @ixgbevf_setup_all_tx_resources(%struct.ixgbevf_adapter* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %85

55:                                               ; preds = %49
  %56 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %57 = call i32 @ixgbevf_setup_all_rx_resources(%struct.ixgbevf_adapter* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %82

61:                                               ; preds = %55
  %62 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %63 = call i32 @ixgbevf_configure(%struct.ixgbevf_adapter* %62)
  %64 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %65 = call i32 @ixgbevf_map_rings_to_vectors(%struct.ixgbevf_adapter* %64)
  %66 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %67 = call i32 @ixgbevf_up_complete(%struct.ixgbevf_adapter* %66)
  %68 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %69 = load i32, i32* @IXGBE_VTEICR, align 4
  %70 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %68, i32 %69)
  %71 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %72 = call i32 @ixgbevf_request_irq(%struct.ixgbevf_adapter* %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %61
  br label %79

76:                                               ; preds = %61
  %77 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %78 = call i32 @ixgbevf_irq_enable(%struct.ixgbevf_adapter* %77)
  store i32 0, i32* %2, align 4
  br label %93

79:                                               ; preds = %75
  %80 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %81 = call i32 @ixgbevf_down(%struct.ixgbevf_adapter* %80)
  br label %82

82:                                               ; preds = %79, %60
  %83 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %84 = call i32 @ixgbevf_free_all_rx_resources(%struct.ixgbevf_adapter* %83)
  br label %85

85:                                               ; preds = %82, %54
  %86 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %87 = call i32 @ixgbevf_free_all_tx_resources(%struct.ixgbevf_adapter* %86)
  br label %88

88:                                               ; preds = %85, %48
  %89 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %90 = call i32 @ixgbevf_reset(%struct.ixgbevf_adapter* %89)
  br label %91

91:                                               ; preds = %88, %39
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %91, %76, %24, %15
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ixgbevf_reset(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @ixgbevf_setup_queues(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_setup_all_tx_resources(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_setup_all_rx_resources(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_configure(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_map_rings_to_vectors(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_up_complete(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @ixgbevf_request_irq(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_irq_enable(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_down(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_free_all_rx_resources(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_free_all_tx_resources(%struct.ixgbevf_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
