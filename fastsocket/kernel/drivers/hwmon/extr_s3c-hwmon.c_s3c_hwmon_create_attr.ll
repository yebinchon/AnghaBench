; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_s3c-hwmon.c_s3c_hwmon_create_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_s3c-hwmon.c_s3c_hwmon_create_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.s3c_hwmon_chcfg = type { i64 }
%struct.s3c_hwmon_attr = type { %struct.sensor_device_attribute, i32, %struct.sensor_device_attribute, i32 }
%struct.sensor_device_attribute = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"in%d_input\00", align 1
@S_IRUGO = common dso_local global i8* null, align 8
@THIS_MODULE = common dso_local global i8* null, align 8
@s3c_hwmon_ch_show = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to create input attribute\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"in%d_label\00", align 1
@s3c_hwmon_label_show = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to create label attribute\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.s3c_hwmon_chcfg*, %struct.s3c_hwmon_attr*, i32)* @s3c_hwmon_create_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_hwmon_create_attr(%struct.device* %0, %struct.s3c_hwmon_chcfg* %1, %struct.s3c_hwmon_attr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.s3c_hwmon_chcfg*, align 8
  %8 = alloca %struct.s3c_hwmon_attr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.s3c_hwmon_chcfg* %1, %struct.s3c_hwmon_chcfg** %7, align 8
  store %struct.s3c_hwmon_attr* %2, %struct.s3c_hwmon_attr** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.s3c_hwmon_attr*, %struct.s3c_hwmon_attr** %8, align 8
  %13 = getelementptr inbounds %struct.s3c_hwmon_attr, %struct.s3c_hwmon_attr* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @snprintf(i32 %14, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.s3c_hwmon_attr*, %struct.s3c_hwmon_attr** %8, align 8
  %18 = getelementptr inbounds %struct.s3c_hwmon_attr, %struct.s3c_hwmon_attr* %17, i32 0, i32 0
  store %struct.sensor_device_attribute* %18, %struct.sensor_device_attribute** %10, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %21 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.s3c_hwmon_attr*, %struct.s3c_hwmon_attr** %8, align 8
  %23 = getelementptr inbounds %struct.s3c_hwmon_attr, %struct.s3c_hwmon_attr* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %26 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  store i32 %24, i32* %28, align 8
  %29 = load i8*, i8** @S_IRUGO, align 8
  %30 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %31 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i8* %29, i8** %33, align 8
  %34 = load i8*, i8** @THIS_MODULE, align 8
  %35 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %36 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i8* %34, i8** %38, align 8
  %39 = load i32, i32* @s3c_hwmon_ch_show, align 4
  %40 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %41 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load %struct.device*, %struct.device** %6, align 8
  %44 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %45 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %44, i32 0, i32 1
  %46 = call i32 @device_create_file(%struct.device* %43, %struct.TYPE_5__* %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %4
  %50 = load %struct.device*, %struct.device** %6, align 8
  %51 = call i32 @dev_err(%struct.device* %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %5, align 4
  br label %107

53:                                               ; preds = %4
  %54 = load %struct.s3c_hwmon_chcfg*, %struct.s3c_hwmon_chcfg** %7, align 8
  %55 = getelementptr inbounds %struct.s3c_hwmon_chcfg, %struct.s3c_hwmon_chcfg* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %105

58:                                               ; preds = %53
  %59 = load %struct.s3c_hwmon_attr*, %struct.s3c_hwmon_attr** %8, align 8
  %60 = getelementptr inbounds %struct.s3c_hwmon_attr, %struct.s3c_hwmon_attr* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @snprintf(i32 %61, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load %struct.s3c_hwmon_attr*, %struct.s3c_hwmon_attr** %8, align 8
  %65 = getelementptr inbounds %struct.s3c_hwmon_attr, %struct.s3c_hwmon_attr* %64, i32 0, i32 2
  store %struct.sensor_device_attribute* %65, %struct.sensor_device_attribute** %10, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %68 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.s3c_hwmon_attr*, %struct.s3c_hwmon_attr** %8, align 8
  %70 = getelementptr inbounds %struct.s3c_hwmon_attr, %struct.s3c_hwmon_attr* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %73 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  store i32 %71, i32* %75, align 8
  %76 = load i8*, i8** @S_IRUGO, align 8
  %77 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %78 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i8* %76, i8** %80, align 8
  %81 = load i8*, i8** @THIS_MODULE, align 8
  %82 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %83 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i8* %81, i8** %85, align 8
  %86 = load i32, i32* @s3c_hwmon_label_show, align 4
  %87 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %88 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  %90 = load %struct.device*, %struct.device** %6, align 8
  %91 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %92 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %91, i32 0, i32 1
  %93 = call i32 @device_create_file(%struct.device* %90, %struct.TYPE_5__* %92)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %58
  %97 = load %struct.device*, %struct.device** %6, align 8
  %98 = load %struct.s3c_hwmon_attr*, %struct.s3c_hwmon_attr** %8, align 8
  %99 = getelementptr inbounds %struct.s3c_hwmon_attr, %struct.s3c_hwmon_attr* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %99, i32 0, i32 1
  %101 = call i32 @device_remove_file(%struct.device* %97, %struct.TYPE_5__* %100)
  %102 = load %struct.device*, %struct.device** %6, align 8
  %103 = call i32 @dev_err(%struct.device* %102, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %104

104:                                              ; preds = %96, %58
  br label %105

105:                                              ; preds = %104, %53
  %106 = load i32, i32* %11, align 4
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %105, %49
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @device_create_file(%struct.device*, %struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @device_remove_file(%struct.device*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
