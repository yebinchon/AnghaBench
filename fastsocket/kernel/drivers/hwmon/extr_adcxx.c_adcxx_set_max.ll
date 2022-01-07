; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adcxx.c_adcxx_set_max.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adcxx.c_adcxx_set_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.spi_device = type { i32 }
%struct.adcxx = type { i64, i32 }

@EINVAL = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @adcxx_set_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @adcxx_set_max(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.spi_device*, align 8
  %11 = alloca %struct.adcxx*, align 8
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.spi_device* @to_spi_device(%struct.device* %13)
  store %struct.spi_device* %14, %struct.spi_device** %10, align 8
  %15 = load %struct.spi_device*, %struct.spi_device** %10, align 8
  %16 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %15, i32 0, i32 0
  %17 = call %struct.adcxx* @dev_get_drvdata(i32* %16)
  store %struct.adcxx* %17, %struct.adcxx** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @strict_strtoul(i8* %18, i32 10, i64* %12)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i64, i64* @EINVAL, align 8
  %23 = sub i64 0, %22
  store i64 %23, i64* %5, align 8
  br label %40

24:                                               ; preds = %4
  %25 = load %struct.adcxx*, %struct.adcxx** %11, align 8
  %26 = getelementptr inbounds %struct.adcxx, %struct.adcxx* %25, i32 0, i32 1
  %27 = call i64 @mutex_lock_interruptible(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i64, i64* @ERESTARTSYS, align 8
  %31 = sub i64 0, %30
  store i64 %31, i64* %5, align 8
  br label %40

32:                                               ; preds = %24
  %33 = load i64, i64* %12, align 8
  %34 = load %struct.adcxx*, %struct.adcxx** %11, align 8
  %35 = getelementptr inbounds %struct.adcxx, %struct.adcxx* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.adcxx*, %struct.adcxx** %11, align 8
  %37 = getelementptr inbounds %struct.adcxx, %struct.adcxx* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i64, i64* %9, align 8
  store i64 %39, i64* %5, align 8
  br label %40

40:                                               ; preds = %32, %29, %21
  %41 = load i64, i64* %5, align 8
  ret i64 %41
}

declare dso_local %struct.spi_device* @to_spi_device(%struct.device*) #1

declare dso_local %struct.adcxx* @dev_get_drvdata(i32*) #1

declare dso_local i64 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
