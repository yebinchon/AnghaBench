; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_gpio.c_check_config_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_gpio.c_check_config_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinmux_info = type { i32 }
%struct.pinmux_cfg_reg = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinmux_info*, %struct.pinmux_cfg_reg*, i32)* @check_config_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_config_reg(%struct.pinmux_info* %0, %struct.pinmux_cfg_reg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinmux_info*, align 8
  %6 = alloca %struct.pinmux_cfg_reg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.pinmux_info* %0, %struct.pinmux_info** %5, align 8
  store %struct.pinmux_cfg_reg* %1, %struct.pinmux_cfg_reg** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.pinmux_cfg_reg*, %struct.pinmux_cfg_reg** %6, align 8
  %12 = getelementptr inbounds %struct.pinmux_cfg_reg, %struct.pinmux_cfg_reg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 1, %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %8, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* %8, align 8
  %19 = udiv i64 %17, %18
  store i64 %19, i64* %9, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %8, align 8
  %23 = urem i64 %21, %22
  store i64 %23, i64* %10, align 8
  %24 = load %struct.pinmux_cfg_reg*, %struct.pinmux_cfg_reg** %6, align 8
  %25 = getelementptr inbounds %struct.pinmux_cfg_reg, %struct.pinmux_cfg_reg* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.pinmux_cfg_reg*, %struct.pinmux_cfg_reg** %6, align 8
  %28 = getelementptr inbounds %struct.pinmux_cfg_reg, %struct.pinmux_cfg_reg* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.pinmux_cfg_reg*, %struct.pinmux_cfg_reg** %6, align 8
  %31 = getelementptr inbounds %struct.pinmux_cfg_reg, %struct.pinmux_cfg_reg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %9, align 8
  %34 = call i64 @gpio_read_reg(i32 %26, i32 %29, i32 %32, i64 %33)
  %35 = load i64, i64* %10, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %39

38:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %37
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i64 @gpio_read_reg(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
