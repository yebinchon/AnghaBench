; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sysfs.c_qlcnic_82xx_store_beacon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sysfs.c_qlcnic_82xx_store_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, i32, i32, %struct.TYPE_2__*, %struct.qlcnic_hardware_context* }
%struct.TYPE_2__ = type { i32 }
%struct.qlcnic_hardware_context = type { i32, i32 }

@QL_STATUS_INVALID_PARAM = common dso_local global i32 0, align 4
@QLCNIC_FW_CAPABILITY_2_BEACON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to get current beacon state\0A\00", align 1
@QLCNIC_BEACON_DISABLE = common dso_local global i64 0, align 8
@QLCNIC_BEACON_EANBLE = common dso_local global i64 0, align 8
@__QLCNIC_LED_ENABLE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@__QLCNIC_RESETTING = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@__QLCNIC_DEV_UP = common dso_local global i32 0, align 4
@QLCNIC_LED_TEST = common dso_local global i32 0, align 4
@__QLCNIC_DIAG_RES_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, i8*, i64)* @qlcnic_82xx_store_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_82xx_store_beacon(%struct.qlcnic_adapter* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qlcnic_hardware_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %15, i32 0, i32 4
  %17 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %16, align 8
  store %struct.qlcnic_hardware_context* %17, %struct.qlcnic_hardware_context** %8, align 8
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %19 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 4
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @QL_STATUS_INVALID_PARAM, align 4
  store i32 %24, i32* %4, align 4
  br label %166

25:                                               ; preds = %3
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @memcpy(i32* %11, i8* %26, i32 4)
  %28 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @qlcnic_validate_beacon(%struct.qlcnic_adapter* %28, i32 %29, i64* %13, i64* %14)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %166

35:                                               ; preds = %25
  %36 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  %37 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @QLCNIC_FW_CAPABILITY_2_BEACON, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %70

42:                                               ; preds = %35
  %43 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %44 = call i32 @qlcnic_get_beacon_state(%struct.qlcnic_adapter* %43, i64* %12)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %42
  %48 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %49 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %48, i32 0, i32 3
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @dev_info(i32* %51, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %69

53:                                               ; preds = %42
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* @QLCNIC_BEACON_DISABLE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  %59 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %58, i32 0, i32 1
  store i32 0, i32* %59, align 4
  br label %68

60:                                               ; preds = %53
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* @QLCNIC_BEACON_EANBLE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  %66 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %65, i32 0, i32 1
  store i32 2, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %60
  br label %68

68:                                               ; preds = %67, %57
  br label %69

69:                                               ; preds = %68, %47
  br label %70

70:                                               ; preds = %69, %35
  %71 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  %72 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %13, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i64, i64* %7, align 8
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %4, align 4
  br label %166

80:                                               ; preds = %70
  %81 = call i32 (...) @rtnl_lock()
  %82 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  %83 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %80
  %87 = load i32, i32* @__QLCNIC_LED_ENABLE, align 4
  %88 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %89 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %88, i32 0, i32 1
  %90 = call i64 @test_and_set_bit(i32 %87, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = call i32 (...) @rtnl_unlock()
  %94 = load i32, i32* @EBUSY, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %166

96:                                               ; preds = %86
  br label %97

97:                                               ; preds = %96, %80
  %98 = load i32, i32* @__QLCNIC_RESETTING, align 4
  %99 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %100 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %99, i32 0, i32 1
  %101 = call i64 @test_bit(i32 %98, i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load i32, i32* @EIO, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %9, align 4
  br label %153

106:                                              ; preds = %97
  %107 = load i32, i32* @__QLCNIC_DEV_UP, align 4
  %108 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %109 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %108, i32 0, i32 1
  %110 = call i64 @test_bit(i32 %107, i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %126, label %112

112:                                              ; preds = %106
  %113 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %114 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @QLCNIC_LED_TEST, align 4
  %117 = call i32 @qlcnic_diag_alloc_res(i32 %115, i32 %116)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %112
  br label %153

121:                                              ; preds = %112
  %122 = load i32, i32* @__QLCNIC_DIAG_RES_ALLOC, align 4
  %123 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %124 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %123, i32 0, i32 1
  %125 = call i32 @set_bit(i32 %122, i32* %124)
  br label %126

126:                                              ; preds = %121, %106
  %127 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %128 = load i64, i64* %13, align 8
  %129 = load i64, i64* %14, align 8
  %130 = call i32 @qlcnic_config_led(%struct.qlcnic_adapter* %127, i64 %128, i64 %129)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %140, label %133

133:                                              ; preds = %126
  %134 = load i64, i64* %7, align 8
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %9, align 4
  %136 = load i64, i64* %13, align 8
  %137 = trunc i64 %136 to i32
  %138 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  %139 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  br label %140

140:                                              ; preds = %133, %126
  %141 = load i32, i32* @__QLCNIC_DIAG_RES_ALLOC, align 4
  %142 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %143 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %142, i32 0, i32 1
  %144 = call i64 @test_and_clear_bit(i32 %141, i32* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %140
  %147 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %148 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %10, align 4
  %151 = call i32 @qlcnic_diag_free_res(i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %146, %140
  br label %153

153:                                              ; preds = %152, %120, %103
  %154 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  %155 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %153
  %159 = load i32, i32* @__QLCNIC_LED_ENABLE, align 4
  %160 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %161 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %160, i32 0, i32 1
  %162 = call i32 @clear_bit(i32 %159, i32* %161)
  br label %163

163:                                              ; preds = %158, %153
  %164 = call i32 (...) @rtnl_unlock()
  %165 = load i32, i32* %9, align 4
  store i32 %165, i32* %4, align 4
  br label %166

166:                                              ; preds = %163, %92, %77, %33, %23
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @qlcnic_validate_beacon(%struct.qlcnic_adapter*, i32, i64*, i64*) #1

declare dso_local i32 @qlcnic_get_beacon_state(%struct.qlcnic_adapter*, i64*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_diag_alloc_res(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_config_led(%struct.qlcnic_adapter*, i64, i64) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_diag_free_res(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
