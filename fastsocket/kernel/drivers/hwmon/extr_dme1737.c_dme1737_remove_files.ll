; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_dme1737.c_dme1737_remove_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_dme1737.c_dme1737_remove_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.dme1737_data = type { i32, i32, i64, i32 }

@dme1737_fan_group = common dso_local global i32* null, align 8
@dme1737_pwm_group = common dso_local global i32* null, align 8
@sch5027 = common dso_local global i64 0, align 8
@dme1737_pwm_misc_attr = common dso_local global i32** null, align 8
@dme1737_misc_group = common dso_local global i32 0, align 4
@dme1737 = common dso_local global i64 0, align 8
@dme1737_vid_group = common dso_local global i32 0, align 4
@dme1737_group = common dso_local global i32 0, align 4
@dev_attr_name = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @dme1737_remove_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dme1737_remove_files(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.dme1737_data*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.dme1737_data* @dev_get_drvdata(%struct.device* %5)
  store %struct.dme1737_data* %6, %struct.dme1737_data** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %29, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32*, i32** @dme1737_fan_group, align 8
  %10 = call i32 @ARRAY_SIZE(i32* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %7
  %13 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %14 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = shl i32 1, %16
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %12
  %21 = load %struct.device*, %struct.device** %2, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 0
  %23 = load i32*, i32** @dme1737_fan_group, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32 @sysfs_remove_group(i32* %22, i32* %26)
  br label %28

28:                                               ; preds = %20, %12
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %7

32:                                               ; preds = %7
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %73, %32
  %34 = load i32, i32* %4, align 4
  %35 = load i32*, i32** @dme1737_pwm_group, align 8
  %36 = call i32 @ARRAY_SIZE(i32* %35)
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %76

38:                                               ; preds = %33
  %39 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %40 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %4, align 4
  %43 = shl i32 1, %42
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %38
  %47 = load %struct.device*, %struct.device** %2, align 8
  %48 = getelementptr inbounds %struct.device, %struct.device* %47, i32 0, i32 0
  %49 = load i32*, i32** @dme1737_pwm_group, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = call i32 @sysfs_remove_group(i32* %48, i32* %52)
  %54 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %55 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @sch5027, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %46
  %60 = load i32, i32* %4, align 4
  %61 = icmp slt i32 %60, 3
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load %struct.device*, %struct.device** %2, align 8
  %64 = getelementptr inbounds %struct.device, %struct.device* %63, i32 0, i32 0
  %65 = load i32**, i32*** @dme1737_pwm_misc_attr, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @sysfs_remove_file(i32* %64, i32* %69)
  br label %71

71:                                               ; preds = %62, %59, %46
  br label %72

72:                                               ; preds = %71, %38
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %33

76:                                               ; preds = %33
  %77 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %78 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @sch5027, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load %struct.device*, %struct.device** %2, align 8
  %84 = getelementptr inbounds %struct.device, %struct.device* %83, i32 0, i32 0
  %85 = call i32 @sysfs_remove_group(i32* %84, i32* @dme1737_misc_group)
  br label %86

86:                                               ; preds = %82, %76
  %87 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %88 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @dme1737, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load %struct.device*, %struct.device** %2, align 8
  %94 = getelementptr inbounds %struct.device, %struct.device* %93, i32 0, i32 0
  %95 = call i32 @sysfs_remove_group(i32* %94, i32* @dme1737_vid_group)
  br label %96

96:                                               ; preds = %92, %86
  %97 = load %struct.device*, %struct.device** %2, align 8
  %98 = getelementptr inbounds %struct.device, %struct.device* %97, i32 0, i32 0
  %99 = call i32 @sysfs_remove_group(i32* %98, i32* @dme1737_group)
  %100 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %101 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %96
  %105 = load %struct.device*, %struct.device** %2, align 8
  %106 = getelementptr inbounds %struct.device, %struct.device* %105, i32 0, i32 0
  %107 = call i32 @sysfs_remove_file(i32* %106, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev_attr_name, i32 0, i32 0))
  br label %108

108:                                              ; preds = %104, %96
  ret void
}

declare dso_local %struct.dme1737_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @sysfs_remove_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
