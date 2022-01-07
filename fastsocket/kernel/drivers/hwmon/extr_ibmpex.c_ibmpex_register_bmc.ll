; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ibmpex.c_ibmpex_register_bmc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ibmpex.c_ibmpex_register_bmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.device = type { i32 }
%struct.ibmpex_bmc_data = type { i32, i32, i32, %struct.device*, i32, i32, %struct.TYPE_5__, i32, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i64*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Insufficient memory for BMC interface.\0A\00", align 1
@IPMI_SYSTEM_INTERFACE_ADDR_TYPE = common dso_local global i32 0, align 4
@IPMI_BMC_CHANNEL = common dso_local global i32 0, align 4
@driver_data = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Unable to register user with IPMI interface %d\0A\00", align 1
@PEX_NET_FUNCTION = common dso_local global i32 0, align 4
@PEX_COMMAND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"Unable to register hwmon device for IPMI interface %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Error %d finding sensors\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.device*)* @ibmpex_register_bmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmpex_register_bmc(i32 %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ibmpex_bmc_data*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.device* %1, %struct.device** %4, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.ibmpex_bmc_data* @kzalloc(i32 80, i32 %7)
  store %struct.ibmpex_bmc_data* %8, %struct.ibmpex_bmc_data** %5, align 8
  %9 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %10 = icmp ne %struct.ibmpex_bmc_data* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %12, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %128

14:                                               ; preds = %2
  %15 = load i32, i32* @IPMI_SYSTEM_INTERFACE_ADDR_TYPE, align 4
  %16 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %17 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %16, i32 0, i32 10
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @IPMI_BMC_CHANNEL, align 4
  %20 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %21 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %20, i32 0, i32 10
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 8
  %23 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %24 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %23, i32 0, i32 10
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %30 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %33 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %32, i32 0, i32 3
  store %struct.device* %31, %struct.device** %33, align 8
  %34 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %35 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %38 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %39 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %38, i32 0, i32 1
  %40 = call i32 @ipmi_create_user(i32 %36, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @driver_data, i32 0, i32 1), %struct.ibmpex_bmc_data* %37, i32* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %14
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %46 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %44, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %125

49:                                               ; preds = %14
  %50 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %51 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %50, i32 0, i32 9
  %52 = call i32 @mutex_init(i32* %51)
  %53 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %54 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %53, i32 0, i32 8
  store i64 0, i64* %54, align 8
  %55 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %56 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %55, i32 0, i32 7
  %57 = call i32 @init_completion(i32* %56)
  %58 = load i32, i32* @PEX_NET_FUNCTION, align 4
  %59 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %60 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %59, i32 0, i32 6
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  store i32 %58, i32* %61, align 8
  %62 = load i32, i32* @PEX_COMMAND, align 4
  %63 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %64 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %63, i32 0, i32 6
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  %66 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %67 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %70 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %69, i32 0, i32 6
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  %72 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %73 = call i32 @ibmpex_ver_check(%struct.ibmpex_bmc_data* %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %49
  br label %120

77:                                               ; preds = %49
  %78 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %79 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %78, i32 0, i32 3
  %80 = load %struct.device*, %struct.device** %79, align 8
  %81 = call i32 @hwmon_device_register(%struct.device* %80)
  %82 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %83 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %85 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @IS_ERR(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %77
  %90 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %91 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %90, i32 0, i32 3
  %92 = load %struct.device*, %struct.device** %91, align 8
  %93 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %94 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %92, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  br label %120

97:                                               ; preds = %77
  %98 = load %struct.device*, %struct.device** %4, align 8
  %99 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %100 = call i32 @dev_set_drvdata(%struct.device* %98, %struct.ibmpex_bmc_data* %99)
  %101 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %102 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %101, i32 0, i32 4
  %103 = call i32 @list_add_tail(i32* %102, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @driver_data, i32 0, i32 0))
  %104 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %105 = call i32 @ibmpex_find_sensors(%struct.ibmpex_bmc_data* %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %97
  %109 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %110 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %109, i32 0, i32 3
  %111 = load %struct.device*, %struct.device** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %111, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  br label %115

114:                                              ; preds = %97
  br label %128

115:                                              ; preds = %108
  %116 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %117 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @hwmon_device_unregister(i32 %118)
  br label %120

120:                                              ; preds = %115, %89, %76
  %121 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %122 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @ipmi_destroy_user(i32 %123)
  br label %125

125:                                              ; preds = %120, %43
  %126 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %127 = call i32 @kfree(%struct.ibmpex_bmc_data* %126)
  br label %128

128:                                              ; preds = %125, %114, %11
  ret void
}

declare dso_local %struct.ibmpex_bmc_data* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @ipmi_create_user(i32, i32*, %struct.ibmpex_bmc_data*, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @ibmpex_ver_check(%struct.ibmpex_bmc_data*) #1

declare dso_local i32 @hwmon_device_register(%struct.device*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.ibmpex_bmc_data*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ibmpex_find_sensors(%struct.ibmpex_bmc_data*) #1

declare dso_local i32 @hwmon_device_unregister(i32) #1

declare dso_local i32 @ipmi_destroy_user(i32) #1

declare dso_local i32 @kfree(%struct.ibmpex_bmc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
