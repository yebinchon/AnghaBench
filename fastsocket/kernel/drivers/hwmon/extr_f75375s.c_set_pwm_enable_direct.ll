; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_f75375s.c_set_pwm_enable_direct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_f75375s.c_set_pwm_enable_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.f75375_data = type { i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@F75375_REG_FAN_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32)* @set_pwm_enable_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_pwm_enable_direct(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.f75375_data*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %11 = call %struct.f75375_data* @i2c_get_clientdata(%struct.i2c_client* %10)
  store %struct.f75375_data* %11, %struct.f75375_data** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp sgt i32 %15, 4
  br i1 %16, label %17, label %20

17:                                               ; preds = %14, %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %77

20:                                               ; preds = %14
  %21 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %22 = load i32, i32* @F75375_REG_FAN_TIMER, align 4
  %23 = call i32 @f75375_read8(%struct.i2c_client* %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @FAN_CTRL_MODE(i32 %24)
  %26 = shl i32 3, %25
  %27 = xor i32 %26, -1
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %7, align 4
  switch i32 %28, label %65 [
    i32 0, label %29
    i32 1, label %52
    i32 2, label %58
    i32 3, label %64
  ]

29:                                               ; preds = %20
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @FAN_CTRL_MODE(i32 %30)
  %32 = shl i32 3, %31
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  %35 = load %struct.f75375_data*, %struct.f75375_data** %8, align 8
  %36 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 255, i32* %40, align 4
  %41 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @F75375_REG_FAN_PWM_DUTY(i32 %42)
  %44 = load %struct.f75375_data*, %struct.f75375_data** %8, align 8
  %45 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @f75375_write8(%struct.i2c_client* %41, i32 %43, i32 %50)
  br label %65

52:                                               ; preds = %20
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @FAN_CTRL_MODE(i32 %53)
  %55 = shl i32 3, %54
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  br label %65

58:                                               ; preds = %20
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @FAN_CTRL_MODE(i32 %59)
  %61 = shl i32 2, %60
  %62 = load i32, i32* %9, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %9, align 4
  br label %65

64:                                               ; preds = %20
  br label %65

65:                                               ; preds = %20, %64, %58, %52, %29
  %66 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %67 = load i32, i32* @F75375_REG_FAN_TIMER, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @f75375_write8(%struct.i2c_client* %66, i32 %67, i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.f75375_data*, %struct.f75375_data** %8, align 8
  %72 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %70, i32* %76, align 4
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %65, %17
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.f75375_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @f75375_read8(%struct.i2c_client*, i32) #1

declare dso_local i32 @FAN_CTRL_MODE(i32) #1

declare dso_local i32 @f75375_write8(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @F75375_REG_FAN_PWM_DUTY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
