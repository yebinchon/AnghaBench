; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/sbus/char/extr_bbc_envctrl.c_attach_one_fan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/sbus/char/extr_bbc_envctrl.c_attach_one_fan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bbc_i2c_bus = type { i32 }
%struct.of_device = type { i32 }
%struct.bbc_fan_control = type { i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@all_fans = common dso_local global i32 0, align 4
@FAN_SPEED_MAX = common dso_local global i32 0, align 4
@FAN_SPEED_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bbc_i2c_bus*, %struct.of_device*, i32)* @attach_one_fan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @attach_one_fan(%struct.bbc_i2c_bus* %0, %struct.of_device* %1, i32 %2) #0 {
  %4 = alloca %struct.bbc_i2c_bus*, align 8
  %5 = alloca %struct.of_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bbc_fan_control*, align 8
  store %struct.bbc_i2c_bus* %0, %struct.bbc_i2c_bus** %4, align 8
  store %struct.of_device* %1, %struct.of_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.bbc_fan_control* @kzalloc(i32 28, i32 %8)
  store %struct.bbc_fan_control* %9, %struct.bbc_fan_control** %7, align 8
  %10 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %7, align 8
  %11 = icmp ne %struct.bbc_fan_control* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %64

13:                                               ; preds = %3
  %14 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %4, align 8
  %15 = load %struct.of_device*, %struct.of_device** %5, align 8
  %16 = call i32 @bbc_i2c_attach(%struct.bbc_i2c_bus* %14, %struct.of_device* %15)
  %17 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %7, align 8
  %18 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %17, i32 0, i32 6
  store i32 %16, i32* %18, align 4
  %19 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %7, align 8
  %20 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %13
  %24 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %7, align 8
  %25 = call i32 @kfree(%struct.bbc_fan_control* %24)
  br label %64

26:                                               ; preds = %13
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %7, align 8
  %29 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %7, align 8
  %31 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %30, i32 0, i32 5
  %32 = call i32 @list_add(i32* %31, i32* @all_fans)
  %33 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %7, align 8
  %34 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %33, i32 0, i32 4
  %35 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %4, align 8
  %36 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %35, i32 0, i32 0
  %37 = call i32 @list_add(i32* %34, i32* %36)
  %38 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %7, align 8
  %39 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load i32, i32* @FAN_SPEED_MAX, align 4
  %41 = load i32, i32* @FAN_SPEED_MIN, align 4
  %42 = sub nsw i32 %40, %41
  %43 = sdiv i32 %42, 2
  %44 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %7, align 8
  %45 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @FAN_SPEED_MIN, align 4
  %47 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %7, align 8
  %48 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* @FAN_SPEED_MAX, align 4
  %52 = load i32, i32* @FAN_SPEED_MIN, align 4
  %53 = sub nsw i32 %51, %52
  %54 = sdiv i32 %53, 2
  %55 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %7, align 8
  %56 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @FAN_SPEED_MIN, align 4
  %58 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %7, align 8
  %59 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %7, align 8
  %63 = call i32 @set_fan_speeds(%struct.bbc_fan_control* %62)
  br label %64

64:                                               ; preds = %26, %23, %12
  ret void
}

declare dso_local %struct.bbc_fan_control* @kzalloc(i32, i32) #1

declare dso_local i32 @bbc_i2c_attach(%struct.bbc_i2c_bus*, %struct.of_device*) #1

declare dso_local i32 @kfree(%struct.bbc_fan_control*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @set_fan_speeds(%struct.bbc_fan_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
