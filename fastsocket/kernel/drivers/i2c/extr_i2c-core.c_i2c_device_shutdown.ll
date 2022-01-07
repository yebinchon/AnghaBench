; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/extr_i2c-core.c_i2c_device_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/extr_i2c-core.c_i2c_device_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2c_client = type { i32 }
%struct.i2c_driver = type { i32 (%struct.i2c_client.0*)* }
%struct.i2c_client.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @i2c_device_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_device_shutdown(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.i2c_driver*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.i2c_client* @i2c_verify_client(%struct.device* %5)
  store %struct.i2c_client* %6, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = icmp ne %struct.i2c_client* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.device*, %struct.device** %2, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %1
  br label %31

15:                                               ; preds = %9
  %16 = load %struct.device*, %struct.device** %2, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.i2c_driver* @to_i2c_driver(i32 %18)
  store %struct.i2c_driver* %19, %struct.i2c_driver** %4, align 8
  %20 = load %struct.i2c_driver*, %struct.i2c_driver** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %20, i32 0, i32 0
  %22 = load i32 (%struct.i2c_client.0*)*, i32 (%struct.i2c_client.0*)** %21, align 8
  %23 = icmp ne i32 (%struct.i2c_client.0*)* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %15
  %25 = load %struct.i2c_driver*, %struct.i2c_driver** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %25, i32 0, i32 0
  %27 = load i32 (%struct.i2c_client.0*)*, i32 (%struct.i2c_client.0*)** %26, align 8
  %28 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %29 = bitcast %struct.i2c_client* %28 to %struct.i2c_client.0*
  %30 = call i32 %27(%struct.i2c_client.0* %29)
  br label %31

31:                                               ; preds = %14, %24, %15
  ret void
}

declare dso_local %struct.i2c_client* @i2c_verify_client(%struct.device*) #1

declare dso_local %struct.i2c_driver* @to_i2c_driver(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
