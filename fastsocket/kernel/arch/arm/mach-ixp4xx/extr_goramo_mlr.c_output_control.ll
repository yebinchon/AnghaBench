; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp4xx/extr_goramo_mlr.c_output_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp4xx/extr_goramo_mlr.c_output_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPIO_SCL = common dso_local global i32 0, align 4
@IXP4XX_GPIO_OUT = common dso_local global i32 0, align 4
@GPIO_SDA = common dso_local global i32 0, align 4
@control_value = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @output_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_control() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @GPIO_SCL, align 4
  %3 = load i32, i32* @IXP4XX_GPIO_OUT, align 4
  %4 = call i32 @gpio_line_config(i32 %2, i32 %3)
  %5 = load i32, i32* @GPIO_SDA, align 4
  %6 = load i32, i32* @IXP4XX_GPIO_OUT, align 4
  %7 = call i32 @gpio_line_config(i32 %5, i32 %6)
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %19, %0
  %9 = load i32, i32* %1, align 4
  %10 = icmp slt i32 %9, 8
  br i1 %10, label %11, label %22

11:                                               ; preds = %8
  %12 = call i32 @set_scl(i32 0)
  %13 = load i32, i32* @control_value, align 4
  %14 = load i32, i32* %1, align 4
  %15 = ashr i32 128, %14
  %16 = and i32 %13, %15
  %17 = call i32 @set_sda(i32 %16)
  %18 = call i32 @set_scl(i32 1)
  br label %19

19:                                               ; preds = %11
  %20 = load i32, i32* %1, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %1, align 4
  br label %8

22:                                               ; preds = %8
  %23 = call i32 @set_str(i32 1)
  %24 = call i32 @set_str(i32 0)
  %25 = call i32 @set_scl(i32 0)
  %26 = call i32 @set_sda(i32 1)
  %27 = call i32 @set_scl(i32 1)
  ret void
}

declare dso_local i32 @gpio_line_config(i32, i32) #1

declare dso_local i32 @set_scl(i32) #1

declare dso_local i32 @set_sda(i32) #1

declare dso_local i32 @set_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
