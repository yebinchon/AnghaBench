; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_tle62x0.c_tle62x0_gpio_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_tle62x0.c_tle62x0_gpio_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.tle62x0_state = type { i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"setting gpio %d to %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @tle62x0_gpio_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tle62x0_gpio_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tle62x0_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.tle62x0_state* @dev_get_drvdata(%struct.device* %14)
  store %struct.tle62x0_state* %15, %struct.tle62x0_state** %10, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call i32 @to_gpio_num(%struct.device_attribute* %16)
  store i32 %17, i32* %11, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @simple_strtoul(i8* %18, i8** %13, i32 0)
  store i64 %19, i64* %12, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i8*, i8** %13, align 8
  %22 = icmp eq i8* %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i64, i64* @EINVAL, align 8
  %25 = sub i64 0, %24
  store i64 %25, i64* %5, align 8
  br label %58

26:                                               ; preds = %4
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i64, i64* %12, align 8
  %30 = call i32 @dev_dbg(%struct.device* %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %28, i64 %29)
  %31 = load %struct.tle62x0_state*, %struct.tle62x0_state** %10, align 8
  %32 = getelementptr inbounds %struct.tle62x0_state, %struct.tle62x0_state* %31, i32 0, i32 1
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load i64, i64* %12, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %26
  %37 = load i32, i32* %11, align 4
  %38 = shl i32 1, %37
  %39 = load %struct.tle62x0_state*, %struct.tle62x0_state** %10, align 8
  %40 = getelementptr inbounds %struct.tle62x0_state, %struct.tle62x0_state* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %51

43:                                               ; preds = %26
  %44 = load i32, i32* %11, align 4
  %45 = shl i32 1, %44
  %46 = xor i32 %45, -1
  %47 = load %struct.tle62x0_state*, %struct.tle62x0_state** %10, align 8
  %48 = getelementptr inbounds %struct.tle62x0_state, %struct.tle62x0_state* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %43, %36
  %52 = load %struct.tle62x0_state*, %struct.tle62x0_state** %10, align 8
  %53 = call i32 @tle62x0_write(%struct.tle62x0_state* %52)
  %54 = load %struct.tle62x0_state*, %struct.tle62x0_state** %10, align 8
  %55 = getelementptr inbounds %struct.tle62x0_state, %struct.tle62x0_state* %54, i32 0, i32 1
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i64, i64* %9, align 8
  store i64 %57, i64* %5, align 8
  br label %58

58:                                               ; preds = %51, %23
  %59 = load i64, i64* %5, align 8
  ret i64 %59
}

declare dso_local %struct.tle62x0_state* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @to_gpio_num(%struct.device_attribute*) #1

declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tle62x0_write(%struct.tle62x0_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
