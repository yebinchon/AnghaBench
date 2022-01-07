; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_gpio.c_gpio_write_bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_gpio.c_gpio_write_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinmux_data_reg = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pinmux_data_reg*, i64, i64)* @gpio_write_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_write_bit(%struct.pinmux_data_reg* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.pinmux_data_reg*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.pinmux_data_reg* %0, %struct.pinmux_data_reg** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.pinmux_data_reg*, %struct.pinmux_data_reg** %4, align 8
  %9 = getelementptr inbounds %struct.pinmux_data_reg, %struct.pinmux_data_reg* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %5, align 8
  %12 = add i64 %11, 1
  %13 = sub i64 %10, %12
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.pinmux_data_reg*, %struct.pinmux_data_reg** %4, align 8
  %19 = getelementptr inbounds %struct.pinmux_data_reg, %struct.pinmux_data_reg* %18, i32 0, i32 1
  %20 = call i32 @set_bit(i64 %17, i32* %19)
  br label %26

21:                                               ; preds = %3
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.pinmux_data_reg*, %struct.pinmux_data_reg** %4, align 8
  %24 = getelementptr inbounds %struct.pinmux_data_reg, %struct.pinmux_data_reg* %23, i32 0, i32 1
  %25 = call i32 @clear_bit(i64 %22, i32* %24)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.pinmux_data_reg*, %struct.pinmux_data_reg** %4, align 8
  %28 = getelementptr inbounds %struct.pinmux_data_reg, %struct.pinmux_data_reg* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.pinmux_data_reg*, %struct.pinmux_data_reg** %4, align 8
  %31 = getelementptr inbounds %struct.pinmux_data_reg, %struct.pinmux_data_reg* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.pinmux_data_reg*, %struct.pinmux_data_reg** %4, align 8
  %34 = getelementptr inbounds %struct.pinmux_data_reg, %struct.pinmux_data_reg* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @gpio_write_raw_reg(i32 %29, i64 %32, i32 %35)
  ret void
}

declare dso_local i32 @set_bit(i64, i32*) #1

declare dso_local i32 @clear_bit(i64, i32*) #1

declare dso_local i32 @gpio_write_raw_reg(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
