; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1390.c_ds1390_get_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1390.c_ds1390_get_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.spi_device = type { i32 }
%struct.ds1390 = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8, i8*)* @ds1390_get_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1390_get_reg(%struct.device* %0, i8 zeroext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca %struct.spi_device*, align 8
  %9 = alloca %struct.ds1390*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.spi_device* @to_spi_device(%struct.device* %11)
  store %struct.spi_device* %12, %struct.spi_device** %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.ds1390* @dev_get_drvdata(%struct.device* %13)
  store %struct.ds1390* %14, %struct.ds1390** %9, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %48

20:                                               ; preds = %3
  %21 = load i8, i8* %6, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %22, 127
  %24 = trunc i32 %23 to i8
  %25 = load %struct.ds1390*, %struct.ds1390** %9, align 8
  %26 = getelementptr inbounds %struct.ds1390, %struct.ds1390* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 %24, i8* %28, align 1
  %29 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %30 = load %struct.ds1390*, %struct.ds1390** %9, align 8
  %31 = getelementptr inbounds %struct.ds1390, %struct.ds1390* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.ds1390*, %struct.ds1390** %9, align 8
  %34 = getelementptr inbounds %struct.ds1390, %struct.ds1390* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @spi_write_then_read(%struct.spi_device* %29, i8* %32, i32 1, i8* %35, i32 1)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %20
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  br label %48

41:                                               ; preds = %20
  %42 = load %struct.ds1390*, %struct.ds1390** %9, align 8
  %43 = getelementptr inbounds %struct.ds1390, %struct.ds1390* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = load i8*, i8** %7, align 8
  store i8 %46, i8* %47, align 1
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %41, %39, %17
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.spi_device* @to_spi_device(%struct.device*) #1

declare dso_local %struct.ds1390* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spi_write_then_read(%struct.spi_device*, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
