; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ibmaem.c_aem_init_aem2_inst.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ibmaem.c_aem_init_aem2_inst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.aem_ipmi_data = type { i32, i32 }
%struct.aem_find_instance_resp = type { i32, i32, i32 }
%struct.aem_data = type { i32, %struct.TYPE_10__*, %struct.TYPE_13__, i32, i32, i32, i32, i32, i32, i32*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_13__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@AEM2_NUM_ENERGY_REGS = common dso_local global i32 0, align 4
@AEM_DEFAULT_POWER_INTERVAL = common dso_local global i32 0, align 4
@DRVNAME = common dso_local global i32 0, align 4
@aem_driver = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@.str = private unnamed_addr constant [55 x i8] c"Unable to register hwmon device for IPMI interface %d\0A\00", align 1
@update_aem2_sensors = common dso_local global i32 0, align 4
@driver_data = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Found AEM v%d.%d at 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aem_ipmi_data*, %struct.aem_find_instance_resp*)* @aem_init_aem2_inst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aem_init_aem2_inst(%struct.aem_ipmi_data* %0, %struct.aem_find_instance_resp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aem_ipmi_data*, align 8
  %5 = alloca %struct.aem_find_instance_resp*, align 8
  %6 = alloca %struct.aem_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.aem_ipmi_data* %0, %struct.aem_ipmi_data** %4, align 8
  store %struct.aem_find_instance_resp* %1, %struct.aem_find_instance_resp** %5, align 8
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
  br label %179

17:                                               ; preds = %2
  %18 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %19 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %18, i32 0, i32 10
  %20 = call i32 @mutex_init(i32* %19)
  %21 = load %struct.aem_find_instance_resp*, %struct.aem_find_instance_resp** %5, align 8
  %22 = getelementptr inbounds %struct.aem_find_instance_resp, %struct.aem_find_instance_resp* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %25 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 4
  %26 = load %struct.aem_find_instance_resp*, %struct.aem_find_instance_resp** %5, align 8
  %27 = getelementptr inbounds %struct.aem_find_instance_resp, %struct.aem_find_instance_resp* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %30 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 8
  %31 = load %struct.aem_find_instance_resp*, %struct.aem_find_instance_resp** %5, align 8
  %32 = getelementptr inbounds %struct.aem_find_instance_resp, %struct.aem_find_instance_resp* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %35 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %48, %17
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @AEM2_NUM_ENERGY_REGS, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load i32, i32* @AEM_DEFAULT_POWER_INTERVAL, align 4
  %42 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %43 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %42, i32 0, i32 9
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %41, i32* %47, align 4
  br label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %36

51:                                               ; preds = %36
  %52 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %53 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %52, i32 0, i32 0
  %54 = call i64 @aem_idr_get(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %175

57:                                               ; preds = %51
  %58 = load i32, i32* @DRVNAME, align 4
  %59 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %60 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call %struct.TYPE_10__* @platform_device_alloc(i32 %58, i32 %61)
  %63 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %64 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %63, i32 0, i32 1
  store %struct.TYPE_10__* %62, %struct.TYPE_10__** %64, align 8
  %65 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %66 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %65, i32 0, i32 1
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = icmp ne %struct.TYPE_10__* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %57
  br label %170

70:                                               ; preds = %57
  %71 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %72 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %71, i32 0, i32 1
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  store i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @aem_driver, i32 0, i32 0), i32** %75, align 8
  %76 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %77 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %76, i32 0, i32 1
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = call i32 @platform_device_add(%struct.TYPE_10__* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %70
  br label %160

83:                                               ; preds = %70
  %84 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %85 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %84, i32 0, i32 1
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %89 = call i32 @dev_set_drvdata(%struct.TYPE_11__* %87, %struct.aem_data* %88)
  %90 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %91 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %90, i32 0, i32 2
  %92 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %4, align 8
  %93 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %4, align 8
  %96 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @aem_init_ipmi_data(%struct.TYPE_13__* %91, i32 %94, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %83
  br label %160

101:                                              ; preds = %83
  %102 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %103 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %102, i32 0, i32 1
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = call i32 @hwmon_device_register(%struct.TYPE_11__* %105)
  %107 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %108 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 8
  %109 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %110 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @IS_ERR(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %101
  %115 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %116 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %115, i32 0, i32 1
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %4, align 8
  %120 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @dev_err(%struct.TYPE_11__* %118, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %121)
  br label %154

123:                                              ; preds = %101
  %124 = load i32, i32* @update_aem2_sensors, align 4
  %125 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %126 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %125, i32 0, i32 8
  store i32 %124, i32* %126, align 4
  %127 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %128 = call i64 @aem2_find_sensors(%struct.aem_data* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  br label %149

131:                                              ; preds = %123
  %132 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %133 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %132, i32 0, i32 7
  %134 = call i32 @list_add_tail(i32* %133, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @driver_data, i32 0, i32 0))
  %135 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %136 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %140 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %143 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %146 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @dev_info(i32 %138, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %141, i32 %144, i32 %147)
  store i32 0, i32* %3, align 4
  br label %179

149:                                              ; preds = %130
  %150 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %151 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @hwmon_device_unregister(i32 %152)
  br label %154

154:                                              ; preds = %149, %114
  %155 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %156 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @ipmi_destroy_user(i32 %158)
  br label %160

160:                                              ; preds = %154, %100, %82
  %161 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %162 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %161, i32 0, i32 1
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = call i32 @dev_set_drvdata(%struct.TYPE_11__* %164, %struct.aem_data* null)
  %166 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %167 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %166, i32 0, i32 1
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %167, align 8
  %169 = call i32 @platform_device_unregister(%struct.TYPE_10__* %168)
  br label %170

170:                                              ; preds = %160, %69
  %171 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %172 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @aem_idr_put(i32 %173)
  br label %175

175:                                              ; preds = %170, %56
  %176 = load %struct.aem_data*, %struct.aem_data** %6, align 8
  %177 = call i32 @kfree(%struct.aem_data* %176)
  %178 = load i32, i32* %8, align 4
  store i32 %178, i32* %3, align 4
  br label %179

179:                                              ; preds = %175, %131, %15
  %180 = load i32, i32* %3, align 4
  ret i32 %180
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

declare dso_local i64 @aem2_find_sensors(%struct.aem_data*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32) #1

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
