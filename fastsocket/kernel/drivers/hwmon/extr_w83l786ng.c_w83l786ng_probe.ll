; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83l786ng.c_w83l786ng_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83l786ng.c_w83l786ng_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.w83l786ng_data = type { i32*, i32, i8**, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@W83L786NG_REG_FAN_DIV = common dso_local global i32 0, align 4
@w83l786ng_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @w83l786ng_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83l786ng_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.w83l786ng_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %6, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.w83l786ng_data* @kzalloc(i32 32, i32 %13)
  store %struct.w83l786ng_data* %14, %struct.w83l786ng_data** %7, align 8
  %15 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %7, align 8
  %16 = icmp ne %struct.w83l786ng_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %9, align 4
  br label %93

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %7, align 8
  %23 = call i32 @i2c_set_clientdata(%struct.i2c_client* %21, %struct.w83l786ng_data* %22)
  %24 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %7, align 8
  %25 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %24, i32 0, i32 3
  %26 = call i32 @mutex_init(i32* %25)
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = call i32 @w83l786ng_init_client(%struct.i2c_client* %27)
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %43, %20
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %46

32:                                               ; preds = %29
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @W83L786NG_REG_FAN_MIN(i32 %34)
  %36 = call i8* @w83l786ng_read_value(%struct.i2c_client* %33, i32 %35)
  %37 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %7, align 8
  %38 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %37, i32 0, i32 2
  %39 = load i8**, i8*** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  store i8* %36, i8** %42, align 8
  br label %43

43:                                               ; preds = %32
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %29

46:                                               ; preds = %29
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = load i32, i32* @W83L786NG_REG_FAN_DIV, align 4
  %49 = call i8* @w83l786ng_read_value(%struct.i2c_client* %47, i32 %48)
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, 7
  %53 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %7, align 8
  %54 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* %10, align 4
  %58 = ashr i32 %57, 4
  %59 = and i32 %58, 7
  %60 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %7, align 8
  %61 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 %59, i32* %63, align 4
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.device, %struct.device* %65, i32 0, i32 0
  %67 = call i32 @sysfs_create_group(i32* %66, i32* @w83l786ng_group)
  store i32 %67, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %46
  br label %86

70:                                               ; preds = %46
  %71 = load %struct.device*, %struct.device** %6, align 8
  %72 = call i32 @hwmon_device_register(%struct.device* %71)
  %73 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %7, align 8
  %74 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  %75 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %7, align 8
  %76 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @IS_ERR(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %70
  %81 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %7, align 8
  %82 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @PTR_ERR(i32 %83)
  store i32 %84, i32* %9, align 4
  br label %86

85:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  br label %95

86:                                               ; preds = %80, %69
  %87 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %88 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.device, %struct.device* %88, i32 0, i32 0
  %90 = call i32 @sysfs_remove_group(i32* %89, i32* @w83l786ng_group)
  %91 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %7, align 8
  %92 = call i32 @kfree(%struct.w83l786ng_data* %91)
  br label %93

93:                                               ; preds = %86, %17
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %93, %85
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.w83l786ng_data* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.w83l786ng_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @w83l786ng_init_client(%struct.i2c_client*) #1

declare dso_local i8* @w83l786ng_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @W83L786NG_REG_FAN_MIN(i32) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @hwmon_device_register(%struct.device*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.w83l786ng_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
