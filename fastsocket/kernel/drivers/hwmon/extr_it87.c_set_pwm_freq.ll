; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_it87.c_set_pwm_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_it87.c_set_pwm_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.it87_data = type { i32, i32 }

@pwm_freq = common dso_local global i32* null, align 8
@IT87_REG_FAN_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_pwm_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_pwm_freq(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.it87_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.it87_data* @dev_get_drvdata(%struct.device* %12)
  store %struct.it87_data* %13, %struct.it87_data** %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i64 @simple_strtoul(i8* %14, i32* null, i32 10)
  store i64 %15, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %38, %4
  %17 = load i32, i32* %11, align 4
  %18 = icmp slt i32 %17, 7
  br i1 %18, label %19, label %41

19:                                               ; preds = %16
  %20 = load i64, i64* %10, align 8
  %21 = load i32*, i32** @pwm_freq, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** @pwm_freq, align 8
  %27 = load i32, i32* %11, align 4
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %25, %31
  %33 = sdiv i32 %32, 2
  %34 = sext i32 %33 to i64
  %35 = icmp ugt i64 %20, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %19
  br label %41

37:                                               ; preds = %19
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %11, align 4
  br label %16

41:                                               ; preds = %36, %16
  %42 = load %struct.it87_data*, %struct.it87_data** %9, align 8
  %43 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %42, i32 0, i32 1
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.it87_data*, %struct.it87_data** %9, align 8
  %46 = load i32, i32* @IT87_REG_FAN_CTL, align 4
  %47 = call i32 @it87_read_value(%struct.it87_data* %45, i32 %46)
  %48 = and i32 %47, 143
  %49 = load %struct.it87_data*, %struct.it87_data** %9, align 8
  %50 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %11, align 4
  %52 = shl i32 %51, 4
  %53 = load %struct.it87_data*, %struct.it87_data** %9, align 8
  %54 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load %struct.it87_data*, %struct.it87_data** %9, align 8
  %58 = load i32, i32* @IT87_REG_FAN_CTL, align 4
  %59 = load %struct.it87_data*, %struct.it87_data** %9, align 8
  %60 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @it87_write_value(%struct.it87_data* %57, i32 %58, i32 %61)
  %63 = load %struct.it87_data*, %struct.it87_data** %9, align 8
  %64 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %63, i32 0, i32 1
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load i64, i64* %8, align 8
  ret i64 %66
}

declare dso_local %struct.it87_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @it87_read_value(%struct.it87_data*, i32) #1

declare dso_local i32 @it87_write_value(%struct.it87_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
