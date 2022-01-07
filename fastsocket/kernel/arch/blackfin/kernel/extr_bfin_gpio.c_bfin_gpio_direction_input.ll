; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_bfin_gpio.c_bfin_gpio_direction_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_bfin_gpio.c_bfin_gpio_direction_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reserved_gpio_map = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@inen = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfin_gpio_direction_input(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32*, i32** @reserved_gpio_map, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @gpio_bank(i32 %6)
  %8 = getelementptr inbounds i32, i32* %5, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @gpio_bit(i32 %10)
  %12 = and i32 %9, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @gpio_error(i32 %15)
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %28

19:                                               ; preds = %1
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @local_irq_save_hw(i64 %20)
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @__bfin_gpio_direction_input(i32 %22)
  %24 = load i32, i32* @inen, align 4
  %25 = call i32 @AWA_DUMMY_READ(i32 %24)
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @local_irq_restore_hw(i64 %26)
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %19, %14
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i64 @gpio_bank(i32) #1

declare dso_local i32 @gpio_bit(i32) #1

declare dso_local i32 @gpio_error(i32) #1

declare dso_local i32 @local_irq_save_hw(i64) #1

declare dso_local i32 @__bfin_gpio_direction_input(i32) #1

declare dso_local i32 @AWA_DUMMY_READ(i32) #1

declare dso_local i32 @local_irq_restore_hw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
