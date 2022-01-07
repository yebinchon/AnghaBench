; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_ds2782_battery.c_ds2782_battery_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_ds2782_battery.c_ds2782_battery_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.ds2782_info = type { %struct.TYPE_3__, %struct.i2c_client* }
%struct.TYPE_3__ = type { %struct.ds2782_info* }

@battery_id = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@battery_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ds2782-%d\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to register battery\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ds2782_battery_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds2782_battery_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.ds2782_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i32 @idr_pre_get(i32* @battery_id, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %7, align 4
  br label %86

16:                                               ; preds = %2
  %17 = call i32 @mutex_lock(i32* @battery_lock)
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = call i32 @idr_get_new(i32* @battery_id, %struct.i2c_client* %18, i32* %8)
  store i32 %19, i32* %7, align 4
  %20 = call i32 @mutex_unlock(i32* @battery_lock)
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %86

24:                                               ; preds = %16
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.ds2782_info* @kzalloc(i32 16, i32 %25)
  store %struct.ds2782_info* %26, %struct.ds2782_info** %6, align 8
  %27 = load %struct.ds2782_info*, %struct.ds2782_info** %6, align 8
  %28 = icmp ne %struct.ds2782_info* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %81

32:                                               ; preds = %24
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call %struct.ds2782_info* @kasprintf(i32 %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.ds2782_info*, %struct.ds2782_info** %6, align 8
  %37 = getelementptr inbounds %struct.ds2782_info, %struct.ds2782_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store %struct.ds2782_info* %35, %struct.ds2782_info** %38, align 8
  %39 = load %struct.ds2782_info*, %struct.ds2782_info** %6, align 8
  %40 = getelementptr inbounds %struct.ds2782_info, %struct.ds2782_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load %struct.ds2782_info*, %struct.ds2782_info** %41, align 8
  %43 = icmp ne %struct.ds2782_info* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %32
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  br label %75

47:                                               ; preds = %32
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = load %struct.ds2782_info*, %struct.ds2782_info** %6, align 8
  %50 = call i32 @i2c_set_clientdata(%struct.i2c_client* %48, %struct.ds2782_info* %49)
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = load %struct.ds2782_info*, %struct.ds2782_info** %6, align 8
  %53 = getelementptr inbounds %struct.ds2782_info, %struct.ds2782_info* %52, i32 0, i32 1
  store %struct.i2c_client* %51, %struct.i2c_client** %53, align 8
  %54 = load %struct.ds2782_info*, %struct.ds2782_info** %6, align 8
  %55 = getelementptr inbounds %struct.ds2782_info, %struct.ds2782_info* %54, i32 0, i32 0
  %56 = call i32 @ds2782_power_supply_init(%struct.TYPE_3__* %55)
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 0
  %59 = load %struct.ds2782_info*, %struct.ds2782_info** %6, align 8
  %60 = getelementptr inbounds %struct.ds2782_info, %struct.ds2782_info* %59, i32 0, i32 0
  %61 = call i32 @power_supply_register(i32* %58, %struct.TYPE_3__* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %47
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %65, i32 0, i32 0
  %67 = call i32 @dev_err(i32* %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %69

68:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %88

69:                                               ; preds = %64
  %70 = load %struct.ds2782_info*, %struct.ds2782_info** %6, align 8
  %71 = getelementptr inbounds %struct.ds2782_info, %struct.ds2782_info* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load %struct.ds2782_info*, %struct.ds2782_info** %72, align 8
  %74 = call i32 @kfree(%struct.ds2782_info* %73)
  br label %75

75:                                               ; preds = %69, %44
  %76 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %77 = load %struct.ds2782_info*, %struct.ds2782_info** %6, align 8
  %78 = call i32 @i2c_set_clientdata(%struct.i2c_client* %76, %struct.ds2782_info* %77)
  %79 = load %struct.ds2782_info*, %struct.ds2782_info** %6, align 8
  %80 = call i32 @kfree(%struct.ds2782_info* %79)
  br label %81

81:                                               ; preds = %75, %29
  %82 = call i32 @mutex_lock(i32* @battery_lock)
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @idr_remove(i32* @battery_id, i32 %83)
  %85 = call i32 @mutex_unlock(i32* @battery_lock)
  br label %86

86:                                               ; preds = %81, %23, %13
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %68
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @idr_pre_get(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_get_new(i32*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.ds2782_info* @kzalloc(i32, i32) #1

declare dso_local %struct.ds2782_info* @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.ds2782_info*) #1

declare dso_local i32 @ds2782_power_supply_init(%struct.TYPE_3__*) #1

declare dso_local i32 @power_supply_register(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @kfree(%struct.ds2782_info*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
