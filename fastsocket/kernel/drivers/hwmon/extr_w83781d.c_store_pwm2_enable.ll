; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83781d.c_store_pwm2_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83781d.c_store_pwm2_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w83781d_data = type { i32, i32 }

@W83781D_REG_PWMCLK12 = common dso_local global i32 0, align 4
@W83781D_REG_BEEP_CONFIG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm2_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_pwm2_enable(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.w83781d_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.w83781d_data* @dev_get_drvdata(%struct.device* %13)
  store %struct.w83781d_data* %14, %struct.w83781d_data** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @simple_strtoul(i8* %15, i32* null, i32 10)
  store i32 %16, i32* %11, align 4
  %17 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %18 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load i32, i32* %11, align 4
  switch i32 %20, label %50 [
    i32 0, label %21
    i32 1, label %21
  ]

21:                                               ; preds = %4, %4
  %22 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %23 = load i32, i32* @W83781D_REG_PWMCLK12, align 4
  %24 = call i32 @w83781d_read_value(%struct.w83781d_data* %22, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %26 = load i32, i32* @W83781D_REG_PWMCLK12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = and i32 %27, 247
  %29 = load i32, i32* %11, align 4
  %30 = shl i32 %29, 3
  %31 = or i32 %28, %30
  %32 = call i32 @w83781d_write_value(%struct.w83781d_data* %25, i32 %26, i32 %31)
  %33 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %34 = load i32, i32* @W83781D_REG_BEEP_CONFIG, align 4
  %35 = call i32 @w83781d_read_value(%struct.w83781d_data* %33, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %37 = load i32, i32* @W83781D_REG_BEEP_CONFIG, align 4
  %38 = load i32, i32* %12, align 4
  %39 = and i32 %38, 239
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = shl i32 %43, 4
  %45 = or i32 %39, %44
  %46 = call i32 @w83781d_write_value(%struct.w83781d_data* %36, i32 %37, i32 %45)
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %49 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %56

50:                                               ; preds = %4
  %51 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %52 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %51, i32 0, i32 1
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i64, i64* @EINVAL, align 8
  %55 = sub i64 0, %54
  store i64 %55, i64* %5, align 8
  br label %61

56:                                               ; preds = %21
  %57 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %58 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %57, i32 0, i32 1
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i64, i64* %9, align 8
  store i64 %60, i64* %5, align 8
  br label %61

61:                                               ; preds = %56, %50
  %62 = load i64, i64* %5, align 8
  ret i64 %62
}

declare dso_local %struct.w83781d_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83781d_read_value(%struct.w83781d_data*, i32) #1

declare dso_local i32 @w83781d_write_value(%struct.w83781d_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
