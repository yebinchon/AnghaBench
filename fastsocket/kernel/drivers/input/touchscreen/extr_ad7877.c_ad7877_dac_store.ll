; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_ad7877.c_ad7877_dac_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_ad7877.c_ad7877_dac_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ad7877 = type { i64, i32, i32 }

@AD7877_REG_DAC = common dso_local global i32 0, align 4
@AD7877_DAC_CONF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ad7877_dac_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7877_dac_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ad7877*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.ad7877* @dev_get_drvdata(%struct.device* %13)
  store %struct.ad7877* %14, %struct.ad7877** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @strict_strtoul(i8* %15, i32 10, i64* %11)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %5, align 4
  br label %47

21:                                               ; preds = %4
  %22 = load %struct.ad7877*, %struct.ad7877** %10, align 8
  %23 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load i64, i64* %11, align 8
  %26 = and i64 %25, 255
  %27 = load %struct.ad7877*, %struct.ad7877** %10, align 8
  %28 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.ad7877*, %struct.ad7877** %10, align 8
  %30 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @AD7877_REG_DAC, align 4
  %33 = load %struct.ad7877*, %struct.ad7877** %10, align 8
  %34 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = shl i64 %35, 4
  %37 = load i32, i32* @AD7877_DAC_CONF, align 4
  %38 = sext i32 %37 to i64
  %39 = or i64 %36, %38
  %40 = trunc i64 %39 to i32
  %41 = call i32 @ad7877_write(i32 %31, i32 %32, i32 %40)
  %42 = load %struct.ad7877*, %struct.ad7877** %10, align 8
  %43 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %42, i32 0, i32 1
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load i64, i64* %9, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %21, %19
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local %struct.ad7877* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ad7877_write(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
