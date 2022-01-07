; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_dme1737.c_dme1737_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_dme1737.c_dme1737_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.dme1737_data = type { i32, i32, i32, %struct.i2c_client*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to initialize device.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to create sysfs files.\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to register device.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @dme1737_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dme1737_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.dme1737_data*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  store %struct.device* %10, %struct.device** %7, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.dme1737_data* @kzalloc(i32 32, i32 %11)
  store %struct.dme1737_data* %12, %struct.dme1737_data** %6, align 8
  %13 = load %struct.dme1737_data*, %struct.dme1737_data** %6, align 8
  %14 = icmp ne %struct.dme1737_data* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %8, align 4
  br label %75

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load %struct.dme1737_data*, %struct.dme1737_data** %6, align 8
  %21 = call i32 @i2c_set_clientdata(%struct.i2c_client* %19, %struct.dme1737_data* %20)
  %22 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %23 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.dme1737_data*, %struct.dme1737_data** %6, align 8
  %26 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 8
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = load %struct.dme1737_data*, %struct.dme1737_data** %6, align 8
  %29 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %28, i32 0, i32 3
  store %struct.i2c_client* %27, %struct.i2c_client** %29, align 8
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dme1737_data*, %struct.dme1737_data** %6, align 8
  %34 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.dme1737_data*, %struct.dme1737_data** %6, align 8
  %36 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %35, i32 0, i32 1
  %37 = call i32 @mutex_init(i32* %36)
  %38 = load %struct.device*, %struct.device** %7, align 8
  %39 = call i32 @dme1737_init_device(%struct.device* %38)
  store i32 %39, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %18
  %42 = load %struct.device*, %struct.device** %7, align 8
  %43 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %72

44:                                               ; preds = %18
  %45 = load %struct.device*, %struct.device** %7, align 8
  %46 = call i32 @dme1737_create_files(%struct.device* %45)
  store i32 %46, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.device*, %struct.device** %7, align 8
  %50 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %72

51:                                               ; preds = %44
  %52 = load %struct.device*, %struct.device** %7, align 8
  %53 = call i32 @hwmon_device_register(%struct.device* %52)
  %54 = load %struct.dme1737_data*, %struct.dme1737_data** %6, align 8
  %55 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.dme1737_data*, %struct.dme1737_data** %6, align 8
  %57 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @IS_ERR(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %51
  %62 = load %struct.device*, %struct.device** %7, align 8
  %63 = call i32 @dev_err(%struct.device* %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.dme1737_data*, %struct.dme1737_data** %6, align 8
  %65 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @PTR_ERR(i32 %66)
  store i32 %67, i32* %8, align 4
  br label %69

68:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %77

69:                                               ; preds = %61
  %70 = load %struct.device*, %struct.device** %7, align 8
  %71 = call i32 @dme1737_remove_files(%struct.device* %70)
  br label %72

72:                                               ; preds = %69, %48, %41
  %73 = load %struct.dme1737_data*, %struct.dme1737_data** %6, align 8
  %74 = call i32 @kfree(%struct.dme1737_data* %73)
  br label %75

75:                                               ; preds = %72, %15
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %68
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.dme1737_data* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.dme1737_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dme1737_init_device(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dme1737_create_files(%struct.device*) #1

declare dso_local i32 @hwmon_device_register(%struct.device*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dme1737_remove_files(%struct.device*) #1

declare dso_local i32 @kfree(%struct.dme1737_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
