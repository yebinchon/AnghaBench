; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-ixp2000.c_ixp2000_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-ixp2000.c_ixp2000_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_6__*, %struct.ixp2000_i2c_pins* }
%struct.TYPE_6__ = type { i32 }
%struct.ixp2000_i2c_pins = type { i32, i32 }
%struct.ixp2000_i2c_data = type { %struct.TYPE_9__, %struct.TYPE_7__, %struct.ixp2000_i2c_pins* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, %struct.ixp2000_i2c_pins* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ixp2000_bit_setsda = common dso_local global i32 0, align 4
@ixp2000_bit_setscl = common dso_local global i32 0, align 4
@ixp2000_bit_getsda = common dso_local global i32 0, align 4
@ixp2000_bit_getscl = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@GPIO_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Could not install, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ixp2000_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixp2000_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixp2000_i2c_pins*, align 8
  %6 = alloca %struct.ixp2000_i2c_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %10 = load %struct.ixp2000_i2c_pins*, %struct.ixp2000_i2c_pins** %9, align 8
  store %struct.ixp2000_i2c_pins* %10, %struct.ixp2000_i2c_pins** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.ixp2000_i2c_data* @kzalloc(i32 64, i32 %11)
  store %struct.ixp2000_i2c_data* %12, %struct.ixp2000_i2c_data** %6, align 8
  %13 = load %struct.ixp2000_i2c_data*, %struct.ixp2000_i2c_data** %6, align 8
  %14 = icmp ne %struct.ixp2000_i2c_data* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %105

18:                                               ; preds = %1
  %19 = load %struct.ixp2000_i2c_pins*, %struct.ixp2000_i2c_pins** %5, align 8
  %20 = load %struct.ixp2000_i2c_data*, %struct.ixp2000_i2c_data** %6, align 8
  %21 = getelementptr inbounds %struct.ixp2000_i2c_data, %struct.ixp2000_i2c_data* %20, i32 0, i32 2
  store %struct.ixp2000_i2c_pins* %19, %struct.ixp2000_i2c_pins** %21, align 8
  %22 = load %struct.ixp2000_i2c_pins*, %struct.ixp2000_i2c_pins** %5, align 8
  %23 = load %struct.ixp2000_i2c_data*, %struct.ixp2000_i2c_data** %6, align 8
  %24 = getelementptr inbounds %struct.ixp2000_i2c_data, %struct.ixp2000_i2c_data* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 6
  store %struct.ixp2000_i2c_pins* %22, %struct.ixp2000_i2c_pins** %25, align 8
  %26 = load i32, i32* @ixp2000_bit_setsda, align 4
  %27 = load %struct.ixp2000_i2c_data*, %struct.ixp2000_i2c_data** %6, align 8
  %28 = getelementptr inbounds %struct.ixp2000_i2c_data, %struct.ixp2000_i2c_data* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 5
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @ixp2000_bit_setscl, align 4
  %31 = load %struct.ixp2000_i2c_data*, %struct.ixp2000_i2c_data** %6, align 8
  %32 = getelementptr inbounds %struct.ixp2000_i2c_data, %struct.ixp2000_i2c_data* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 4
  store i32 %30, i32* %33, align 8
  %34 = load i32, i32* @ixp2000_bit_getsda, align 4
  %35 = load %struct.ixp2000_i2c_data*, %struct.ixp2000_i2c_data** %6, align 8
  %36 = getelementptr inbounds %struct.ixp2000_i2c_data, %struct.ixp2000_i2c_data* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 3
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @ixp2000_bit_getscl, align 4
  %39 = load %struct.ixp2000_i2c_data*, %struct.ixp2000_i2c_data** %6, align 8
  %40 = getelementptr inbounds %struct.ixp2000_i2c_data, %struct.ixp2000_i2c_data* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 8
  %42 = load %struct.ixp2000_i2c_data*, %struct.ixp2000_i2c_data** %6, align 8
  %43 = getelementptr inbounds %struct.ixp2000_i2c_data, %struct.ixp2000_i2c_data* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i32 6, i32* %44, align 8
  %45 = load i32, i32* @HZ, align 4
  %46 = load %struct.ixp2000_i2c_data*, %struct.ixp2000_i2c_data** %6, align 8
  %47 = getelementptr inbounds %struct.ixp2000_i2c_data, %struct.ixp2000_i2c_data* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load %struct.ixp2000_i2c_data*, %struct.ixp2000_i2c_data** %6, align 8
  %50 = getelementptr inbounds %struct.ixp2000_i2c_data, %struct.ixp2000_i2c_data* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @strlcpy(i32 %52, i32 %58, i32 4)
  %60 = load %struct.ixp2000_i2c_data*, %struct.ixp2000_i2c_data** %6, align 8
  %61 = getelementptr inbounds %struct.ixp2000_i2c_data, %struct.ixp2000_i2c_data* %60, i32 0, i32 1
  %62 = load %struct.ixp2000_i2c_data*, %struct.ixp2000_i2c_data** %6, align 8
  %63 = getelementptr inbounds %struct.ixp2000_i2c_data, %struct.ixp2000_i2c_data* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  store %struct.TYPE_7__* %61, %struct.TYPE_7__** %64, align 8
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = load %struct.ixp2000_i2c_data*, %struct.ixp2000_i2c_data** %6, align 8
  %68 = getelementptr inbounds %struct.ixp2000_i2c_data, %struct.ixp2000_i2c_data* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store %struct.TYPE_10__* %66, %struct.TYPE_10__** %70, align 8
  %71 = load %struct.ixp2000_i2c_pins*, %struct.ixp2000_i2c_pins** %5, align 8
  %72 = getelementptr inbounds %struct.ixp2000_i2c_pins, %struct.ixp2000_i2c_pins* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @GPIO_IN, align 4
  %75 = call i32 @gpio_line_config(i32 %73, i32 %74)
  %76 = load %struct.ixp2000_i2c_pins*, %struct.ixp2000_i2c_pins** %5, align 8
  %77 = getelementptr inbounds %struct.ixp2000_i2c_pins, %struct.ixp2000_i2c_pins* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @GPIO_IN, align 4
  %80 = call i32 @gpio_line_config(i32 %78, i32 %79)
  %81 = load %struct.ixp2000_i2c_pins*, %struct.ixp2000_i2c_pins** %5, align 8
  %82 = getelementptr inbounds %struct.ixp2000_i2c_pins, %struct.ixp2000_i2c_pins* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @gpio_line_set(i32 %83, i32 0)
  %85 = load %struct.ixp2000_i2c_pins*, %struct.ixp2000_i2c_pins** %5, align 8
  %86 = getelementptr inbounds %struct.ixp2000_i2c_pins, %struct.ixp2000_i2c_pins* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @gpio_line_set(i32 %87, i32 0)
  %89 = load %struct.ixp2000_i2c_data*, %struct.ixp2000_i2c_data** %6, align 8
  %90 = getelementptr inbounds %struct.ixp2000_i2c_data, %struct.ixp2000_i2c_data* %89, i32 0, i32 0
  %91 = call i32 @i2c_bit_add_bus(%struct.TYPE_9__* %90)
  store i32 %91, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %18
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @dev_err(%struct.TYPE_10__* %95, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %96)
  %98 = load %struct.ixp2000_i2c_data*, %struct.ixp2000_i2c_data** %6, align 8
  %99 = call i32 @kfree(%struct.ixp2000_i2c_data* %98)
  %100 = load i32, i32* %4, align 4
  store i32 %100, i32* %2, align 4
  br label %105

101:                                              ; preds = %18
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = load %struct.ixp2000_i2c_data*, %struct.ixp2000_i2c_data** %6, align 8
  %104 = call i32 @platform_set_drvdata(%struct.platform_device* %102, %struct.ixp2000_i2c_data* %103)
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %101, %93, %15
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.ixp2000_i2c_data* @kzalloc(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @gpio_line_config(i32, i32) #1

declare dso_local i32 @gpio_line_set(i32, i32) #1

declare dso_local i32 @i2c_bit_add_bus(%struct.TYPE_9__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.ixp2000_i2c_data*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ixp2000_i2c_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
