; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/extr_i2c-core.c_i2c_device_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/extr_i2c-core.c_i2c_device_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2c_client = type { i32 }
%struct.i2c_driver = type { i32 (%struct.i2c_client.0*)* }
%struct.i2c_client.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @i2c_device_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_device_resume(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_driver*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.i2c_client* @i2c_verify_client(%struct.device* %6)
  store %struct.i2c_client* %7, %struct.i2c_client** %4, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = icmp ne %struct.i2c_client* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %33

16:                                               ; preds = %10
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.i2c_driver* @to_i2c_driver(i32 %19)
  store %struct.i2c_driver* %20, %struct.i2c_driver** %5, align 8
  %21 = load %struct.i2c_driver*, %struct.i2c_driver** %5, align 8
  %22 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %21, i32 0, i32 0
  %23 = load i32 (%struct.i2c_client.0*)*, i32 (%struct.i2c_client.0*)** %22, align 8
  %24 = icmp ne i32 (%struct.i2c_client.0*)* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %33

26:                                               ; preds = %16
  %27 = load %struct.i2c_driver*, %struct.i2c_driver** %5, align 8
  %28 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %27, i32 0, i32 0
  %29 = load i32 (%struct.i2c_client.0*)*, i32 (%struct.i2c_client.0*)** %28, align 8
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = bitcast %struct.i2c_client* %30 to %struct.i2c_client.0*
  %32 = call i32 %29(%struct.i2c_client.0* %31)
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %26, %25, %15
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.i2c_client* @i2c_verify_client(%struct.device*) #1

declare dso_local %struct.i2c_driver* @to_i2c_driver(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
