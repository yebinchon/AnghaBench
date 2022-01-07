; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_asus_atk0110.c_atk_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_asus_atk0110.c_atk_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.atk_data*, i32, i32 }
%struct.atk_data = type { i32, i32, i32, i32, %struct.acpi_device* }
%struct.acpi_buffer = type { %union.acpi_object*, i32 }
%union.acpi_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"adding...\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@BOARD_ID = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"atk: method MBIF not found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ACPI_TYPE_STRING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"board ID = %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Using old hwmon interface\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Using new hwmon interface\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"No usable sensor detected, bailing out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @atk_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atk_add(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_buffer, align 8
  %7 = alloca %union.acpi_object*, align 8
  %8 = alloca %struct.atk_data*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %9 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %10 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %9, i32 0, i32 1
  %11 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.atk_data* @kzalloc(i32 24, i32 %12)
  store %struct.atk_data* %13, %struct.atk_data** %8, align 8
  %14 = load %struct.atk_data*, %struct.atk_data** %8, align 8
  %15 = icmp ne %struct.atk_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %155

19:                                               ; preds = %1
  %20 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %21 = load %struct.atk_data*, %struct.atk_data** %8, align 8
  %22 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %21, i32 0, i32 4
  store %struct.acpi_device* %20, %struct.acpi_device** %22, align 8
  %23 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %24 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.atk_data*, %struct.atk_data** %8, align 8
  %27 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.atk_data*, %struct.atk_data** %8, align 8
  %29 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %28, i32 0, i32 3
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.atk_data*, %struct.atk_data** %8, align 8
  %32 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %34 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 1
  store i32 %33, i32* %34, align 8
  %35 = load %struct.atk_data*, %struct.atk_data** %8, align 8
  %36 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @BOARD_ID, align 4
  %39 = load i32, i32* @ACPI_TYPE_PACKAGE, align 4
  %40 = call i64 @acpi_evaluate_object_typed(i32 %37, i32 %38, i32* null, %struct.acpi_buffer* %6, i32 %39)
  store i64 %40, i64* %4, align 8
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* @AE_OK, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %19
  %45 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %46 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %45, i32 0, i32 1
  %47 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %143

50:                                               ; preds = %19
  %51 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %52 = load %union.acpi_object*, %union.acpi_object** %51, align 8
  store %union.acpi_object* %52, %union.acpi_object** %7, align 8
  %53 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %54 = bitcast %union.acpi_object* %53 to %struct.TYPE_6__*
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp sge i32 %56, 2
  br i1 %57, label %58, label %80

58:                                               ; preds = %50
  %59 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %60 = bitcast %union.acpi_object* %59 to %struct.TYPE_6__*
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @ACPI_TYPE_STRING, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %58
  %69 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %70 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %69, i32 0, i32 1
  %71 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %72 = bitcast %union.acpi_object* %71 to %struct.TYPE_6__*
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %70, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %68, %58, %50
  %81 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %82 = load %union.acpi_object*, %union.acpi_object** %81, align 8
  %83 = call i32 @ACPI_FREE(%union.acpi_object* %82)
  %84 = load %struct.atk_data*, %struct.atk_data** %8, align 8
  %85 = call i32 @atk_check_old_if(%struct.atk_data* %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %80
  %89 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %90 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %89, i32 0, i32 1
  %91 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %90, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %92 = load %struct.atk_data*, %struct.atk_data** %8, align 8
  %93 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %92, i32 0, i32 1
  store i32 1, i32* %93, align 4
  br label %106

94:                                               ; preds = %80
  %95 = load %struct.atk_data*, %struct.atk_data** %8, align 8
  %96 = call i32 @atk_check_new_if(%struct.atk_data* %95)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %143

100:                                              ; preds = %94
  %101 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %102 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %101, i32 0, i32 1
  %103 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %104 = load %struct.atk_data*, %struct.atk_data** %8, align 8
  %105 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %104, i32 0, i32 1
  store i32 0, i32* %105, align 4
  br label %106

106:                                              ; preds = %100, %88
  %107 = load %struct.atk_data*, %struct.atk_data** %8, align 8
  %108 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load %struct.atk_data*, %struct.atk_data** %8, align 8
  %113 = call i32 @atk_enumerate_old_hwmon(%struct.atk_data* %112)
  store i32 %113, i32* %5, align 4
  br label %117

114:                                              ; preds = %106
  %115 = load %struct.atk_data*, %struct.atk_data** %8, align 8
  %116 = call i32 @atk_enumerate_new_hwmon(%struct.atk_data* %115)
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %114, %111
  %118 = load i32, i32* %5, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  br label %143

121:                                              ; preds = %117
  %122 = load i32, i32* %5, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %121
  %125 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %126 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %125, i32 0, i32 1
  %127 = call i32 @dev_info(i32* %126, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %128 = load i32, i32* @ENODEV, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %5, align 4
  br label %143

130:                                              ; preds = %121
  %131 = load %struct.atk_data*, %struct.atk_data** %8, align 8
  %132 = call i32 @atk_register_hwmon(%struct.atk_data* %131)
  store i32 %132, i32* %5, align 4
  %133 = load i32, i32* %5, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  br label %140

136:                                              ; preds = %130
  %137 = load %struct.atk_data*, %struct.atk_data** %8, align 8
  %138 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %139 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %138, i32 0, i32 0
  store %struct.atk_data* %137, %struct.atk_data** %139, align 8
  store i32 0, i32* %2, align 4
  br label %155

140:                                              ; preds = %135
  %141 = load %struct.atk_data*, %struct.atk_data** %8, align 8
  %142 = call i32 @atk_free_sensors(%struct.atk_data* %141)
  br label %143

143:                                              ; preds = %140, %124, %120, %99, %44
  %144 = load %struct.atk_data*, %struct.atk_data** %8, align 8
  %145 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load %struct.atk_data*, %struct.atk_data** %8, align 8
  %150 = call i32 @atk_ec_ctl(%struct.atk_data* %149, i32 0)
  br label %151

151:                                              ; preds = %148, %143
  %152 = load %struct.atk_data*, %struct.atk_data** %8, align 8
  %153 = call i32 @kfree(%struct.atk_data* %152)
  %154 = load i32, i32* %5, align 4
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %151, %136, %16
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local %struct.atk_data* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @acpi_evaluate_object_typed(i32, i32, i32*, %struct.acpi_buffer*, i32) #1

declare dso_local i32 @ACPI_FREE(%union.acpi_object*) #1

declare dso_local i32 @atk_check_old_if(%struct.atk_data*) #1

declare dso_local i32 @atk_check_new_if(%struct.atk_data*) #1

declare dso_local i32 @atk_enumerate_old_hwmon(%struct.atk_data*) #1

declare dso_local i32 @atk_enumerate_new_hwmon(%struct.atk_data*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @atk_register_hwmon(%struct.atk_data*) #1

declare dso_local i32 @atk_free_sensors(%struct.atk_data*) #1

declare dso_local i32 @atk_ec_ctl(%struct.atk_data*, i32) #1

declare dso_local i32 @kfree(%struct.atk_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
