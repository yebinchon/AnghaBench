; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ibmaem.c_aem_init_aem1_inst.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ibmaem.c_aem_init_aem1_inst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.aem_ipmi_data = type { i32, i32 }
%struct.aem_data = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_13__, i32, i32, i64, i32, i32, i32*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_13__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@AEM1_NUM_ENERGY_REGS = common dso_local global i32 0, align 4
@AEM_DEFAULT_POWER_INTERVAL = common dso_local global i32 0, align 4
@DRVNAME = common dso_local global i32 0, align 4
@aem_driver = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@.str = private unnamed_addr constant [55 x i8] c"Unable to register hwmon device for IPMI interface %d\0A\00", align 1
@update_aem1_sensors = common dso_local global i32 0, align 4
@driver_data = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Found AEM v%d.%d at 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aem_ipmi_data*, i32)* @aem_init_aem1_inst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aem_init_aem1_inst(%struct.aem_ipmi_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aem_ipmi_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.aem_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.aem_ipmi_data* %0, %struct.aem_ipmi_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.aem_data* @kzalloc(i32 64, i32 %11)
  store %struct.aem_data* %12, %struct.aem_data** %6, align 8
  %13 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %14 = icmp ne %struct.aem_data* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %171

17:                                               ; preds = %2
  %18 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %19 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %18, i32 0, i32 10
  %20 = call i32 @mutex_init(i32* %19)
  %21 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %22 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %24 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %23, i32 0, i32 6
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %27 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %40, %17
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @AEM1_NUM_ENERGY_REGS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load i32, i32* @AEM_DEFAULT_POWER_INTERVAL, align 4
  %34 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %35 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %34, i32 0, i32 9
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %33, i32* %39, align 4
  br label %40

40:                                               ; preds = %32
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %28

43:                                               ; preds = %28
  %44 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %45 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %44, i32 0, i32 1
  %46 = call i64 @aem_idr_get(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %167

49:                                               ; preds = %43
  %50 = load i32, i32* @DRVNAME, align 4
  %51 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %52 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.TYPE_10__* @platform_device_alloc(i32 %50, i32 %53)
  %55 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %56 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %55, i32 0, i32 2
  store %struct.TYPE_10__* %54, %struct.TYPE_10__** %56, align 8
  %57 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %58 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %57, i32 0, i32 2
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = icmp ne %struct.TYPE_10__* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %49
  br label %162

62:                                               ; preds = %49
  %63 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %64 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %63, i32 0, i32 2
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  store i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @aem_driver, i32 0, i32 0), i32** %67, align 8
  %68 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %69 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %68, i32 0, i32 2
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = call i32 @platform_device_add(%struct.TYPE_10__* %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  br label %152

75:                                               ; preds = %62
  %76 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %77 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %76, i32 0, i32 2
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %81 = call i32 @dev_set_drvdata(%struct.TYPE_11__* %79, %struct.aem_data* %80)
  %82 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %83 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %82, i32 0, i32 3
  %84 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %4, align 8
  %85 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %4, align 8
  %88 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @aem_init_ipmi_data(%struct.TYPE_13__* %83, i32 %86, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %75
  br label %152

93:                                               ; preds = %75
  %94 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %95 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %94, i32 0, i32 2
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = call i32 @hwmon_device_register(%struct.TYPE_11__* %97)
  %99 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %100 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 8
  %101 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %102 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @IS_ERR(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %93
  %107 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %108 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %107, i32 0, i32 2
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %4, align 8
  %112 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @dev_err(%struct.TYPE_11__* %110, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %113)
  br label %146

115:                                              ; preds = %93
  %116 = load i32, i32* @update_aem1_sensors, align 4
  %117 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %118 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %117, i32 0, i32 8
  store i32 %116, i32* %118, align 4
  %119 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %120 = call i64 @aem1_find_sensors(%struct.aem_data* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  br label %141

123:                                              ; preds = %115
  %124 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %125 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %124, i32 0, i32 7
  %126 = call i32 @list_add_tail(i32* %125, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @driver_data, i32 0, i32 0))
  %127 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %128 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %132 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %135 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %134, i32 0, i32 6
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %138 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @dev_info(i32 %130, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %133, i64 %136, i32 %139)
  store i32 0, i32* %3, align 4
  br label %171

141:                                              ; preds = %122
  %142 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %143 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @hwmon_device_unregister(i32 %144)
  br label %146

146:                                              ; preds = %141, %106
  %147 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %148 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @ipmi_destroy_user(i32 %150)
  br label %152

152:                                              ; preds = %146, %92, %74
  %153 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %154 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %153, i32 0, i32 2
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = call i32 @dev_set_drvdata(%struct.TYPE_11__* %156, %struct.aem_data* null)
  %158 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %159 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %158, i32 0, i32 2
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %159, align 8
  %161 = call i32 @platform_device_unregister(%struct.TYPE_10__* %160)
  br label %162

162:                                              ; preds = %152, %61
  %163 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %164 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @aem_idr_put(i32 %165)
  br label %167

167:                                              ; preds = %162, %48
  %168 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %169 = call i32 @kfree(%struct.aem_data* %168)
  %170 = load i32, i32* %8, align 4
  store i32 %170, i32* %3, align 4
  br label %171

171:                                              ; preds = %167, %123, %15
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local %struct.aem_data* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @aem_idr_get(i32*) #1

declare dso_local %struct.TYPE_10__* @platform_device_alloc(i32, i32) #1

declare dso_local i32 @platform_device_add(%struct.TYPE_10__*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_11__*, %struct.aem_data*) #1

declare dso_local i64 @aem_init_ipmi_data(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_11__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i64 @aem1_find_sensors(%struct.aem_data*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i64, i32) #1

declare dso_local i32 @hwmon_device_unregister(i32) #1

declare dso_local i32 @ipmi_destroy_user(i32) #1

declare dso_local i32 @platform_device_unregister(%struct.TYPE_10__*) #1

declare dso_local i32 @aem_idr_put(i32) #1

declare dso_local i32 @kfree(%struct.aem_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
