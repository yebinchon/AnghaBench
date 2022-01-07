; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/extr_i2c-core.c_i2c_device_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/extr_i2c-core.c_i2c_device_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2c_client = type { i32 }
%struct.i2c_driver = type { i32 (%struct.i2c_client.0*, i32)* }
%struct.i2c_client.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @i2c_device_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_device_suspend(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.i2c_driver*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.i2c_client* @i2c_verify_client(%struct.device* %8)
  store %struct.i2c_client* %9, %struct.i2c_client** %6, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %11 = icmp ne %struct.i2c_client* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %36

18:                                               ; preds = %12
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.i2c_driver* @to_i2c_driver(i32 %21)
  store %struct.i2c_driver* %22, %struct.i2c_driver** %7, align 8
  %23 = load %struct.i2c_driver*, %struct.i2c_driver** %7, align 8
  %24 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %23, i32 0, i32 0
  %25 = load i32 (%struct.i2c_client.0*, i32)*, i32 (%struct.i2c_client.0*, i32)** %24, align 8
  %26 = icmp ne i32 (%struct.i2c_client.0*, i32)* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %36

28:                                               ; preds = %18
  %29 = load %struct.i2c_driver*, %struct.i2c_driver** %7, align 8
  %30 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %29, i32 0, i32 0
  %31 = load i32 (%struct.i2c_client.0*, i32)*, i32 (%struct.i2c_client.0*, i32)** %30, align 8
  %32 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %33 = bitcast %struct.i2c_client* %32 to %struct.i2c_client.0*
  %34 = load i32, i32* %5, align 4
  %35 = call i32 %31(%struct.i2c_client.0* %33, i32 %34)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %28, %27, %17
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.i2c_client* @i2c_verify_client(%struct.device*) #1

declare dso_local %struct.i2c_driver* @to_i2c_driver(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
