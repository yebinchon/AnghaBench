; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1511.c_ds1511_nvram_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1511.c_ds1511_nvram_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }

@RTC_CMD = common dso_local global i32 0, align 4
@DS1511_BME = common dso_local global i64 0, align 8
@DS1511_RAM_MAX = common dso_local global i64 0, align 8
@DS1511_RAMADDR_LSB = common dso_local global i32 0, align 4
@DS1511_RAMDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @ds1511_nvram_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1511_nvram_read(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.kobject*, align 8
  %9 = alloca %struct.bin_attribute*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store %struct.kobject* %1, %struct.kobject** %8, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load i64, i64* %12, align 8
  %15 = icmp ugt i64 %14, 1
  br i1 %15, label %16, label %23

16:                                               ; preds = %6
  %17 = load i32, i32* @RTC_CMD, align 4
  %18 = call i64 @rtc_read(i32 %17)
  %19 = load i64, i64* @DS1511_BME, align 8
  %20 = or i64 %18, %19
  %21 = load i32, i32* @RTC_CMD, align 4
  %22 = call i32 @rtc_write(i64 %20, i32 %21)
  br label %23

23:                                               ; preds = %16, %6
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* @DS1511_RAM_MAX, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i64, i64* @DS1511_RAM_MAX, align 8
  store i64 %28, i64* %11, align 8
  br label %29

29:                                               ; preds = %27, %23
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* %11, align 8
  %32 = add i64 %30, %31
  %33 = load i64, i64* @DS1511_RAM_MAX, align 8
  %34 = add i64 %33, 1
  %35 = icmp ugt i64 %32, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load i64, i64* @DS1511_RAM_MAX, align 8
  %38 = load i64, i64* %11, align 8
  %39 = sub i64 %37, %38
  %40 = add i64 %39, 1
  store i64 %40, i64* %12, align 8
  br label %41

41:                                               ; preds = %36, %29
  %42 = load i64, i64* %11, align 8
  %43 = load i32, i32* @DS1511_RAMADDR_LSB, align 4
  %44 = call i32 @rtc_write(i64 %42, i32 %43)
  store i32 0, i32* %13, align 4
  br label %45

45:                                               ; preds = %54, %41
  %46 = load i64, i64* %12, align 8
  %47 = icmp ugt i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load i32, i32* @DS1511_RAMDATA, align 4
  %50 = call i64 @rtc_read(i32 %49)
  %51 = trunc i64 %50 to i8
  %52 = load i8*, i8** %10, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %10, align 8
  store i8 %51, i8* %52, align 1
  br label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %13, align 4
  %57 = load i64, i64* %12, align 8
  %58 = add i64 %57, -1
  store i64 %58, i64* %12, align 8
  br label %45

59:                                               ; preds = %45
  %60 = load i32, i32* %13, align 4
  %61 = icmp sgt i32 %60, 1
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load i32, i32* @RTC_CMD, align 4
  %64 = call i64 @rtc_read(i32 %63)
  %65 = load i64, i64* @DS1511_BME, align 8
  %66 = xor i64 %65, -1
  %67 = and i64 %64, %66
  %68 = load i32, i32* @RTC_CMD, align 4
  %69 = call i32 @rtc_write(i64 %67, i32 %68)
  br label %70

70:                                               ; preds = %62, %59
  %71 = load i32, i32* %13, align 4
  ret i32 %71
}

declare dso_local i32 @rtc_write(i64, i32) #1

declare dso_local i64 @rtc_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
