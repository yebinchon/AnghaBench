; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ethtool.c_qlcnic_loopback_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ethtool.c_qlcnic_loopback_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.qlcnic_adapter = type { i32, i32, %struct.qlcnic_hardware_context*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.qlcnic_hardware_context = type { i32, i64, i32, i32 }
%struct.TYPE_4__ = type { %struct.qlcnic_host_sds_ring* }
%struct.qlcnic_host_sds_ring = type { i32 }
%struct.TYPE_3__ = type { i32 }

@QLCNIC_FW_CAPABILITY_MULTI_LOOPBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Firmware do not support loopback test\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"%s loopback test in progress\0A\00", align 1
@QLCNIC_ILB_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"external\00", align 1
@QLCNIC_NON_PRIV_FUNC = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [51 x i8] c"Loopback test not supported in nonprivileged mode\0A\00", align 1
@__QLCNIC_RESETTING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@QLCNIC_LOOPBACK_TEST = common dso_local global i32 0, align 4
@QLCNIC_ILB_MAX_RCV_LOOP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [54 x i8] c"firmware didnt respond to loopback configure request\0A\00", align 1
@QLCNIC_FW_NOT_RESPOND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_loopback_test(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qlcnic_host_sds_ring*, align 8
  %9 = alloca %struct.qlcnic_hardware_context*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.qlcnic_adapter* %13, %struct.qlcnic_adapter** %6, align 8
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %18 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %17, i32 0, i32 2
  %19 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %18, align 8
  store %struct.qlcnic_hardware_context* %19, %struct.qlcnic_hardware_context** %9, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %21 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @qlcnic_83xx_loopback_test(%struct.net_device* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %153

27:                                               ; preds = %2
  %28 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %29 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %28, i32 0, i32 2
  %30 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %29, align 8
  %31 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @QLCNIC_FW_CAPABILITY_MULTI_LOOPBACK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %27
  %37 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %38 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %37, i32 0, i32 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = call i32 @dev_info(i32* %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EOPNOTSUPP, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %153

44:                                               ; preds = %27
  %45 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %46 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %45, i32 0, i32 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @QLCNIC_ILB_MODE, align 4
  %51 = icmp eq i32 %49, %50
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %54 = call i32 (i32*, i8*, ...) @dev_warn(i32* %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  %55 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %56 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @QLCNIC_NON_PRIV_FUNC, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %44
  %61 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %62 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %61, i32 0, i32 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = call i32 (i32*, i8*, ...) @dev_warn(i32* %64, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %153

66:                                               ; preds = %44
  %67 = load i32, i32* @__QLCNIC_RESETTING, align 4
  %68 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %69 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %68, i32 0, i32 1
  %70 = call i64 @test_and_set_bit(i32 %67, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* @EBUSY, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %153

75:                                               ; preds = %66
  %76 = load %struct.net_device*, %struct.net_device** %4, align 8
  %77 = load i32, i32* @QLCNIC_LOOPBACK_TEST, align 4
  %78 = call i32 @qlcnic_diag_alloc_res(%struct.net_device* %76, i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %144

82:                                               ; preds = %75
  %83 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %84 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %83, i32 0, i32 3
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %86, align 8
  %88 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %87, i64 0
  store %struct.qlcnic_host_sds_ring* %88, %struct.qlcnic_host_sds_ring** %8, align 8
  %89 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @qlcnic_set_lb_mode(%struct.qlcnic_adapter* %89, i32 %90)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %82
  br label %140

95:                                               ; preds = %82
  %96 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %97 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %96, i32 0, i32 2
  store i32 0, i32* %97, align 8
  br label %98

98:                                               ; preds = %126, %95
  %99 = call i32 @msleep(i32 500)
  %100 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %8, align 8
  %101 = call i32 @qlcnic_process_rcv_ring_diag(%struct.qlcnic_host_sds_ring* %100)
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* @QLCNIC_ILB_MAX_RCV_LOOP, align 4
  %105 = icmp sgt i32 %102, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %98
  %107 = load %struct.net_device*, %struct.net_device** %4, align 8
  %108 = call i32 @netdev_info(%struct.net_device* %107, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  %109 = load i32, i32* @QLCNIC_FW_NOT_RESPOND, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %11, align 4
  br label %140

111:                                              ; preds = %98
  %112 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %113 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %112, i32 0, i32 2
  %114 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %113, align 8
  %115 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %111
  %119 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %120 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %119, i32 0, i32 2
  %121 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %120, align 8
  %122 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  store i32 %123, i32* %11, align 4
  br label %140

124:                                              ; preds = %111
  br label %125

125:                                              ; preds = %124
  br label %126

126:                                              ; preds = %125
  %127 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %128 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @QLCNIC_IS_LB_CONFIGURED(i32 %129)
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  br i1 %132, label %98, label %133

133:                                              ; preds = %126
  %134 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @qlcnic_do_lb_test(%struct.qlcnic_adapter* %134, i32 %135)
  store i32 %136, i32* %11, align 4
  %137 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %138 = load i32, i32* %5, align 4
  %139 = call i32 @qlcnic_clear_lb_mode(%struct.qlcnic_adapter* %137, i32 %138)
  br label %140

140:                                              ; preds = %133, %118, %106, %94
  %141 = load %struct.net_device*, %struct.net_device** %4, align 8
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @qlcnic_diag_free_res(%struct.net_device* %141, i32 %142)
  br label %144

144:                                              ; preds = %140, %81
  %145 = load i32, i32* %7, align 4
  %146 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %147 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  %148 = load i32, i32* @__QLCNIC_RESETTING, align 4
  %149 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %150 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %149, i32 0, i32 1
  %151 = call i32 @clear_bit(i32 %148, i32* %150)
  %152 = load i32, i32* %11, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %144, %72, %60, %36, %23
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @qlcnic_83xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_loopback_test(%struct.net_device*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_diag_alloc_res(%struct.net_device*, i32) #1

declare dso_local i32 @qlcnic_set_lb_mode(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @qlcnic_process_rcv_ring_diag(%struct.qlcnic_host_sds_ring*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @QLCNIC_IS_LB_CONFIGURED(i32) #1

declare dso_local i32 @qlcnic_do_lb_test(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_clear_lb_mode(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_diag_free_res(%struct.net_device*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
