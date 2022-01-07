; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_sm501.c_sm501_register_gpio_i2c_instance.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_sm501.c_sm501_register_gpio_i2c_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm501_devdata = type { i32 }
%struct.sm501_platdata_gpio_i2c = type { i32, i32, i32, i32, i32 }
%struct.i2c_gpio_platform_data = type { i8*, i8*, i32, i32 }
%struct.platform_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.i2c_gpio_platform_data* }

@.str = private unnamed_addr constant [9 x i8] c"i2c-gpio\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"registering i2c-%d: sda=%d (%d), scl=%d (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sm501_devdata*, %struct.sm501_platdata_gpio_i2c*)* @sm501_register_gpio_i2c_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm501_register_gpio_i2c_instance(%struct.sm501_devdata* %0, %struct.sm501_platdata_gpio_i2c* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sm501_devdata*, align 8
  %5 = alloca %struct.sm501_platdata_gpio_i2c*, align 8
  %6 = alloca %struct.i2c_gpio_platform_data*, align 8
  %7 = alloca %struct.platform_device*, align 8
  store %struct.sm501_devdata* %0, %struct.sm501_devdata** %4, align 8
  store %struct.sm501_platdata_gpio_i2c* %1, %struct.sm501_platdata_gpio_i2c** %5, align 8
  %8 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %9 = call %struct.platform_device* @sm501_create_subdev(%struct.sm501_devdata* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0, i32 24)
  store %struct.platform_device* %9, %struct.platform_device** %7, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %11 = icmp ne %struct.platform_device* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %71

15:                                               ; preds = %2
  %16 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.i2c_gpio_platform_data*, %struct.i2c_gpio_platform_data** %18, align 8
  store %struct.i2c_gpio_platform_data* %19, %struct.i2c_gpio_platform_data** %6, align 8
  %20 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %21 = load %struct.sm501_platdata_gpio_i2c*, %struct.sm501_platdata_gpio_i2c** %5, align 8
  %22 = getelementptr inbounds %struct.sm501_platdata_gpio_i2c, %struct.sm501_platdata_gpio_i2c* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @sm501_gpio_pin2nr(%struct.sm501_devdata* %20, i32 %23)
  %25 = load %struct.i2c_gpio_platform_data*, %struct.i2c_gpio_platform_data** %6, align 8
  %26 = getelementptr inbounds %struct.i2c_gpio_platform_data, %struct.i2c_gpio_platform_data* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %28 = load %struct.sm501_platdata_gpio_i2c*, %struct.sm501_platdata_gpio_i2c** %5, align 8
  %29 = getelementptr inbounds %struct.sm501_platdata_gpio_i2c, %struct.sm501_platdata_gpio_i2c* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @sm501_gpio_pin2nr(%struct.sm501_devdata* %27, i32 %30)
  %32 = load %struct.i2c_gpio_platform_data*, %struct.i2c_gpio_platform_data** %6, align 8
  %33 = getelementptr inbounds %struct.i2c_gpio_platform_data, %struct.i2c_gpio_platform_data* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load %struct.sm501_platdata_gpio_i2c*, %struct.sm501_platdata_gpio_i2c** %5, align 8
  %35 = getelementptr inbounds %struct.sm501_platdata_gpio_i2c, %struct.sm501_platdata_gpio_i2c* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.i2c_gpio_platform_data*, %struct.i2c_gpio_platform_data** %6, align 8
  %38 = getelementptr inbounds %struct.i2c_gpio_platform_data, %struct.i2c_gpio_platform_data* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.sm501_platdata_gpio_i2c*, %struct.sm501_platdata_gpio_i2c** %5, align 8
  %40 = getelementptr inbounds %struct.sm501_platdata_gpio_i2c, %struct.sm501_platdata_gpio_i2c* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.i2c_gpio_platform_data*, %struct.i2c_gpio_platform_data** %6, align 8
  %43 = getelementptr inbounds %struct.i2c_gpio_platform_data, %struct.i2c_gpio_platform_data* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.sm501_platdata_gpio_i2c*, %struct.sm501_platdata_gpio_i2c** %5, align 8
  %45 = getelementptr inbounds %struct.sm501_platdata_gpio_i2c, %struct.sm501_platdata_gpio_i2c* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %50 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sm501_platdata_gpio_i2c*, %struct.sm501_platdata_gpio_i2c** %5, align 8
  %53 = getelementptr inbounds %struct.sm501_platdata_gpio_i2c, %struct.sm501_platdata_gpio_i2c* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.i2c_gpio_platform_data*, %struct.i2c_gpio_platform_data** %6, align 8
  %56 = getelementptr inbounds %struct.i2c_gpio_platform_data, %struct.i2c_gpio_platform_data* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.sm501_platdata_gpio_i2c*, %struct.sm501_platdata_gpio_i2c** %5, align 8
  %59 = getelementptr inbounds %struct.sm501_platdata_gpio_i2c, %struct.sm501_platdata_gpio_i2c* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.i2c_gpio_platform_data*, %struct.i2c_gpio_platform_data** %6, align 8
  %62 = getelementptr inbounds %struct.i2c_gpio_platform_data, %struct.i2c_gpio_platform_data* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.sm501_platdata_gpio_i2c*, %struct.sm501_platdata_gpio_i2c** %5, align 8
  %65 = getelementptr inbounds %struct.sm501_platdata_gpio_i2c, %struct.sm501_platdata_gpio_i2c* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_info(i32 %51, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %54, i8* %57, i32 %60, i8* %63, i32 %66)
  %68 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %69 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %70 = call i32 @sm501_register_device(%struct.sm501_devdata* %68, %struct.platform_device* %69)
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %15, %12
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.platform_device* @sm501_create_subdev(%struct.sm501_devdata*, i8*, i32, i32) #1

declare dso_local i8* @sm501_gpio_pin2nr(%struct.sm501_devdata*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @sm501_register_device(%struct.sm501_devdata*, %struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
