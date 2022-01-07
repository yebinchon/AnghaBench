; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_loopback_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_loopback_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.qlcnic_adapter = type { i32, i32, %struct.TYPE_2__*, %struct.qlcnic_hardware_context*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.qlcnic_hardware_context = type { i64, i64, i64 }

@QLCNIC_NON_PRIV_FUNC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"Loopback test not supported in non privileged mode\0A\00", align 1
@__QLCNIC_RESETTING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Device is resetting\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Device is in diagnostics mode\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"%s loopback test in progress\0A\00", align 1
@QLCNIC_ILB_MODE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"external\00", align 1
@QLCNIC_LOOPBACK_TEST = common dso_local global i32 0, align 4
@QLCNIC_MSIX_ENABLED = common dso_local global i32 0, align 4
@QLCNIC_ILB_MAX_RCV_LOOP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [56 x i8] c"Firmware didn't sent link up event to loopback request\0A\00", align 1
@QLCNIC_FW_NOT_RESPOND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_loopback_test(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca %struct.qlcnic_hardware_context*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.qlcnic_adapter* %12, %struct.qlcnic_adapter** %6, align 8
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %14 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %13, i32 0, i32 3
  %15 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %14, align 8
  store %struct.qlcnic_hardware_context* %15, %struct.qlcnic_hardware_context** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %17 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  %19 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %7, align 8
  %20 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @QLCNIC_NON_PRIV_FUNC, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = call i32 @netdev_warn(%struct.net_device* %25, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %142

28:                                               ; preds = %2
  %29 = load i32, i32* @__QLCNIC_RESETTING, align 4
  %30 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %31 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %30, i32 0, i32 4
  %32 = call i64 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %142

39:                                               ; preds = %28
  %40 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %41 = call i64 @qlcnic_get_diag_lock(%struct.qlcnic_adapter* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %142

48:                                               ; preds = %39
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @QLCNIC_ILB_MODE, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %55 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %54)
  %56 = load %struct.net_device*, %struct.net_device** %4, align 8
  %57 = load i32, i32* @QLCNIC_LOOPBACK_TEST, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @qlcnic_83xx_diag_alloc_res(%struct.net_device* %56, i32 %57, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %48
  br label %135

63:                                               ; preds = %48
  %64 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @qlcnic_83xx_set_lb_mode(%struct.qlcnic_adapter* %64, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %131

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %111, %70
  %72 = call i32 @msleep(i32 500)
  %73 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %74 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %71
  %80 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %81 = call i32 @qlcnic_83xx_process_aen(%struct.qlcnic_adapter* %80)
  br label %82

82:                                               ; preds = %79, %71
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* @QLCNIC_ILB_MAX_RCV_LOOP, align 4
  %86 = icmp sgt i32 %83, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %82
  %88 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %89 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %88, i32 0, i32 2
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = call i32 @dev_info(i32* %91, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0))
  %93 = load i32, i32* @QLCNIC_FW_NOT_RESPOND, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %8, align 4
  %95 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @qlcnic_83xx_clear_lb_mode(%struct.qlcnic_adapter* %95, i32 %96)
  br label %131

98:                                               ; preds = %82
  br label %99

99:                                               ; preds = %98
  %100 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %101 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %100, i32 0, i32 3
  %102 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %101, align 8
  %103 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %99
  %107 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %7, align 8
  %108 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br label %111

111:                                              ; preds = %106, %99
  %112 = phi i1 [ false, %99 ], [ %110, %106 ]
  %113 = zext i1 %112 to i32
  %114 = icmp ne i32 %113, 1
  br i1 %114, label %71, label %115

115:                                              ; preds = %111
  %116 = load %struct.net_device*, %struct.net_device** %4, align 8
  %117 = call i64 @netif_running(%struct.net_device* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %115
  %120 = load %struct.net_device*, %struct.net_device** %4, align 8
  %121 = call i32 @netif_carrier_off(%struct.net_device* %120)
  %122 = load %struct.net_device*, %struct.net_device** %4, align 8
  %123 = call i32 @netif_stop_queue(%struct.net_device* %122)
  br label %124

124:                                              ; preds = %119, %115
  %125 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @qlcnic_do_lb_test(%struct.qlcnic_adapter* %125, i32 %126)
  store i32 %127, i32* %8, align 4
  %128 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @qlcnic_83xx_clear_lb_mode(%struct.qlcnic_adapter* %128, i32 %129)
  br label %131

131:                                              ; preds = %124, %87, %69
  %132 = load %struct.net_device*, %struct.net_device** %4, align 8
  %133 = load i32, i32* %10, align 4
  %134 = call i32 @qlcnic_83xx_diag_free_res(%struct.net_device* %132, i32 %133)
  br label %135

135:                                              ; preds = %131, %62
  %136 = load i32, i32* %10, align 4
  %137 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %138 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %140 = call i32 @qlcnic_release_diag_lock(%struct.qlcnic_adapter* %139)
  %141 = load i32, i32* %8, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %135, %43, %34, %24
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #1

declare dso_local i64 @qlcnic_get_diag_lock(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_diag_alloc_res(%struct.net_device*, i32, i32) #1

declare dso_local i32 @qlcnic_83xx_set_lb_mode(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @qlcnic_83xx_process_aen(%struct.qlcnic_adapter*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @qlcnic_83xx_clear_lb_mode(%struct.qlcnic_adapter*, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @qlcnic_do_lb_test(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_83xx_diag_free_res(%struct.net_device*, i32) #1

declare dso_local i32 @qlcnic_release_diag_lock(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
