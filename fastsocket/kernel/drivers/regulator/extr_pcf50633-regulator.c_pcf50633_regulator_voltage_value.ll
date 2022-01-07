; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_pcf50633-regulator.c_pcf50633_regulator_voltage_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_pcf50633-regulator.c_pcf50633_regulator_voltage_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @pcf50633_regulator_voltage_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf50633_regulator_voltage_value(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %20 [
    i32 137, label %8
    i32 136, label %11
    i32 135, label %14
    i32 133, label %17
    i32 132, label %17
    i32 131, label %17
    i32 130, label %17
    i32 129, label %17
    i32 128, label %17
    i32 134, label %17
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @auto_voltage_value(i32 %9)
  store i32 %10, i32* %6, align 4
  br label %23

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @down_voltage_value(i32 %12)
  store i32 %13, i32* %6, align 4
  br label %23

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @down_voltage_value(i32 %15)
  store i32 %16, i32* %6, align 4
  br label %23

17:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @ldo_voltage_value(i32 %18)
  store i32 %19, i32* %6, align 4
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %26

23:                                               ; preds = %17, %14, %11, %8
  %24 = load i32, i32* %6, align 4
  %25 = mul nsw i32 %24, 1000
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @auto_voltage_value(i32) #1

declare dso_local i32 @down_voltage_value(i32) #1

declare dso_local i32 @ldo_voltage_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
