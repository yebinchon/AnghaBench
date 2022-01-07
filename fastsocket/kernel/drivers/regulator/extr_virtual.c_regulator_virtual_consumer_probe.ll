; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_virtual.c_regulator_virtual_consumer_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_virtual.c_regulator_virtual_consumer_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }
%struct.virtual_consumer_data = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to obtain supply '%s': %d\0A\00", align 1
@attributes = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to create attr %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @regulator_virtual_consumer_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regulator_virtual_consumer_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.virtual_consumer_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.virtual_consumer_data* @kzalloc(i32 12, i32 %12)
  store %struct.virtual_consumer_data* %13, %struct.virtual_consumer_data** %5, align 8
  %14 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %5, align 8
  %15 = icmp eq %struct.virtual_consumer_data* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %108

19:                                               ; preds = %1
  %20 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %5, align 8
  %21 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %20, i32 0, i32 2
  %22 = call i32 @mutex_init(i32* %21)
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @regulator_get(%struct.TYPE_5__* %24, i8* %25)
  %27 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %5, align 8
  %28 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %5, align 8
  %30 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @IS_ERR(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %19
  %35 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %5, align 8
  %36 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @PTR_ERR(i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %41, i32 %42)
  br label %86

44:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %68, %44
  %46 = load i32, i32* %7, align 4
  %47 = load i32*, i32** @attributes, align 8
  %48 = call i32 @ARRAY_SIZE(i32* %47)
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %45
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = load i32*, i32** @attributes, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @device_create_file(%struct.TYPE_5__* %52, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %50
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %63, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %65)
  br label %81

67:                                               ; preds = %50
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %45

71:                                               ; preds = %45
  %72 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %5, align 8
  %73 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @regulator_get_mode(i32 %74)
  %76 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %5, align 8
  %77 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %5, align 8
  %80 = call i32 @platform_set_drvdata(%struct.platform_device* %78, %struct.virtual_consumer_data* %79)
  store i32 0, i32* %2, align 4
  br label %108

81:                                               ; preds = %61
  %82 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %5, align 8
  %83 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @regulator_put(i32 %84)
  br label %86

86:                                               ; preds = %81, %34
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %101, %86
  %88 = load i32, i32* %7, align 4
  %89 = load i32*, i32** @attributes, align 8
  %90 = call i32 @ARRAY_SIZE(i32* %89)
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %87
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = load i32*, i32** @attributes, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @device_remove_file(%struct.TYPE_5__* %94, i32 %99)
  br label %101

101:                                              ; preds = %92
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %87

104:                                              ; preds = %87
  %105 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %5, align 8
  %106 = call i32 @kfree(%struct.virtual_consumer_data* %105)
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %104, %71, %16
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local %struct.virtual_consumer_data* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @regulator_get(%struct.TYPE_5__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @device_create_file(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @regulator_get_mode(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.virtual_consumer_data*) #1

declare dso_local i32 @regulator_put(i32) #1

declare dso_local i32 @device_remove_file(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @kfree(%struct.virtual_consumer_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
