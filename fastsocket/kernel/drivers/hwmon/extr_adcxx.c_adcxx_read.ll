; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adcxx.c_adcxx_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adcxx.c_adcxx_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.spi_device = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.adcxx = type { i32, i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"spi_write_then_read failed with status %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"raw value = 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @adcxx_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adcxx_read(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.spi_device*, align 8
  %9 = alloca %struct.sensor_device_attribute*, align 8
  %10 = alloca %struct.adcxx*, align 8
  %11 = alloca [2 x i32], align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.spi_device* @to_spi_device(%struct.device* %15)
  store %struct.spi_device* %16, %struct.spi_device** %8, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %18 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %17)
  store %struct.sensor_device_attribute* %18, %struct.sensor_device_attribute** %9, align 8
  %19 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %20 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %19, i32 0, i32 0
  %21 = call %struct.adcxx* @dev_get_drvdata(i32* %20)
  store %struct.adcxx* %21, %struct.adcxx** %10, align 8
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %23 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %24 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 3
  store i32 %26, i32* %22, align 4
  %27 = getelementptr inbounds i32, i32* %22, i64 1
  %28 = getelementptr inbounds i32, i32* %22, i64 2
  br label %29

29:                                               ; preds = %29, %3
  %30 = phi i32* [ %27, %3 ], [ %31, %29 ]
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = icmp eq i32* %31, %28
  br i1 %32, label %33, label %29

33:                                               ; preds = %29
  %34 = load %struct.adcxx*, %struct.adcxx** %10, align 8
  %35 = getelementptr inbounds %struct.adcxx, %struct.adcxx* %34, i32 0, i32 1
  %36 = call i64 @mutex_lock_interruptible(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @ERESTARTSYS, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %76

41:                                               ; preds = %33
  %42 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %45 = call i32 @spi_write_then_read(%struct.spi_device* %42, i32* %43, i32 8, i32* %44, i32 8)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load %struct.device*, %struct.device** %5, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @dev_warn(%struct.device* %49, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %71

52:                                               ; preds = %41
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 8
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %55, %57
  store i32 %58, i32* %14, align 4
  %59 = load %struct.device*, %struct.device** %5, align 8
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @dev_dbg(%struct.device* %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %14, align 4
  %63 = load %struct.adcxx*, %struct.adcxx** %10, align 8
  %64 = getelementptr inbounds %struct.adcxx, %struct.adcxx* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %62, %65
  %67 = ashr i32 %66, 12
  store i32 %67, i32* %14, align 4
  %68 = load i8*, i8** %7, align 8
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @sprintf(i8* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  store i32 %70, i32* %13, align 4
  br label %71

71:                                               ; preds = %52, %48
  %72 = load %struct.adcxx*, %struct.adcxx** %10, align 8
  %73 = getelementptr inbounds %struct.adcxx, %struct.adcxx* %72, i32 0, i32 1
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %71, %38
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.spi_device* @to_spi_device(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.adcxx* @dev_get_drvdata(i32*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @spi_write_then_read(%struct.spi_device*, i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
