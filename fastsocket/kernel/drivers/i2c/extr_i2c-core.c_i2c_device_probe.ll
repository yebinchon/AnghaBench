; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/extr_i2c-core.c_i2c_device_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/extr_i2c-core.c_i2c_device_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2c_client = type { i32, %struct.i2c_driver*, i32 }
%struct.i2c_driver = type { i32 (%struct.i2c_client.0*, i32)*, i32 }
%struct.i2c_client.0 = type opaque

@ENODEV = common dso_local global i32 0, align 4
@I2C_CLIENT_WAKE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"probe\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @i2c_device_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_device_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_driver*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.i2c_client* @i2c_verify_client(%struct.device* %7)
  store %struct.i2c_client* %8, %struct.i2c_client** %4, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = icmp ne %struct.i2c_client* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %67

12:                                               ; preds = %1
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.i2c_driver* @to_i2c_driver(i32 %15)
  store %struct.i2c_driver* %16, %struct.i2c_driver** %5, align 8
  %17 = load %struct.i2c_driver*, %struct.i2c_driver** %5, align 8
  %18 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %17, i32 0, i32 0
  %19 = load i32 (%struct.i2c_client.0*, i32)*, i32 (%struct.i2c_client.0*, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.i2c_client.0*, i32)* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %12
  %22 = load %struct.i2c_driver*, %struct.i2c_driver** %5, align 8
  %23 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21, %12
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %67

29:                                               ; preds = %21
  %30 = load %struct.i2c_driver*, %struct.i2c_driver** %5, align 8
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 1
  store %struct.i2c_driver* %30, %struct.i2c_driver** %32, align 8
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 2
  %35 = call i32 @device_can_wakeup(i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %29
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 2
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @I2C_CLIENT_WAKE, align 4
  %44 = and i32 %42, %43
  %45 = call i32 @device_init_wakeup(i32* %39, i32 %44)
  br label %46

46:                                               ; preds = %37, %29
  %47 = load %struct.device*, %struct.device** %3, align 8
  %48 = call i32 @dev_dbg(%struct.device* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.i2c_driver*, %struct.i2c_driver** %5, align 8
  %50 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %49, i32 0, i32 0
  %51 = load i32 (%struct.i2c_client.0*, i32)*, i32 (%struct.i2c_client.0*, i32)** %50, align 8
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = bitcast %struct.i2c_client* %52 to %struct.i2c_client.0*
  %54 = load %struct.i2c_driver*, %struct.i2c_driver** %5, align 8
  %55 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = call i32 @i2c_match_id(i32 %56, %struct.i2c_client* %57)
  %59 = call i32 %51(%struct.i2c_client.0* %53, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %46
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %63, i32 0, i32 1
  store %struct.i2c_driver* null, %struct.i2c_driver** %64, align 8
  br label %65

65:                                               ; preds = %62, %46
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %26, %11
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.i2c_client* @i2c_verify_client(%struct.device*) #1

declare dso_local %struct.i2c_driver* @to_i2c_driver(i32) #1

declare dso_local i32 @device_can_wakeup(i32*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @i2c_match_id(i32, %struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
