; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_gpio.c_write_config_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_gpio.c_write_config_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinmux_info = type { i32 }
%struct.pinmux_cfg_reg = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pinmux_info*, %struct.pinmux_cfg_reg*, i32)* @write_config_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_config_reg(%struct.pinmux_info* %0, %struct.pinmux_cfg_reg* %1, i32 %2) #0 {
  %4 = alloca %struct.pinmux_info*, align 8
  %5 = alloca %struct.pinmux_cfg_reg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.pinmux_info* %0, %struct.pinmux_info** %4, align 8
  store %struct.pinmux_cfg_reg* %1, %struct.pinmux_cfg_reg** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.pinmux_cfg_reg*, %struct.pinmux_cfg_reg** %5, align 8
  %11 = getelementptr inbounds %struct.pinmux_cfg_reg, %struct.pinmux_cfg_reg* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 1, %12
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* %7, align 8
  %18 = udiv i64 %16, %17
  store i64 %18, i64* %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* %7, align 8
  %22 = urem i64 %20, %21
  store i64 %22, i64* %9, align 8
  %23 = load %struct.pinmux_cfg_reg*, %struct.pinmux_cfg_reg** %5, align 8
  %24 = getelementptr inbounds %struct.pinmux_cfg_reg, %struct.pinmux_cfg_reg* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pinmux_cfg_reg*, %struct.pinmux_cfg_reg** %5, align 8
  %27 = getelementptr inbounds %struct.pinmux_cfg_reg, %struct.pinmux_cfg_reg* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.pinmux_cfg_reg*, %struct.pinmux_cfg_reg** %5, align 8
  %30 = getelementptr inbounds %struct.pinmux_cfg_reg, %struct.pinmux_cfg_reg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @gpio_write_reg(i32 %25, i32 %28, i32 %31, i64 %32, i64 %33)
  ret void
}

declare dso_local i32 @gpio_write_reg(i32, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
