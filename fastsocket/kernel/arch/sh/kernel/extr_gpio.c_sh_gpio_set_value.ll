; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_gpio.c_sh_gpio_set_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_gpio.c_sh_gpio_set_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinmux_info = type { i32 }
%struct.pinmux_data_reg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pinmux_info*, i32, i32)* @sh_gpio_set_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_gpio_set_value(%struct.pinmux_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pinmux_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pinmux_data_reg*, align 8
  %8 = alloca i32, align 4
  store %struct.pinmux_info* %0, %struct.pinmux_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.pinmux_data_reg* null, %struct.pinmux_data_reg** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.pinmux_info*, %struct.pinmux_info** %4, align 8
  %10 = icmp ne %struct.pinmux_info* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.pinmux_info*, %struct.pinmux_info** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @get_data_reg(%struct.pinmux_info* %12, i32 %13, %struct.pinmux_data_reg** %7, i32* %8)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11, %3
  %17 = call i32 (...) @BUG()
  br label %23

18:                                               ; preds = %11
  %19 = load %struct.pinmux_data_reg*, %struct.pinmux_data_reg** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @gpio_write_bit(%struct.pinmux_data_reg* %19, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %18, %16
  ret void
}

declare dso_local i64 @get_data_reg(%struct.pinmux_info*, i32, %struct.pinmux_data_reg**, i32*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @gpio_write_bit(%struct.pinmux_data_reg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
