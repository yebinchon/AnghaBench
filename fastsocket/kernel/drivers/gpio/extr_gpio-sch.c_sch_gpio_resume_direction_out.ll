; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_gpio-sch.c_sch_gpio_resume_direction_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_gpio-sch.c_sch_gpio_resume_direction_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }

@gpio_lock = common dso_local global i32 0, align 4
@gpio_ba = common dso_local global i64 0, align 8
@RGIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @sch_gpio_resume_direction_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sch_gpio_resume_direction_out(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @sch_gpio_resume_set(%struct.gpio_chip* %8, i32 %9, i32 %10)
  %12 = call i32 @spin_lock(i32* @gpio_lock)
  %13 = load i64, i64* @gpio_ba, align 8
  %14 = load i64, i64* @RGIO, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @inb(i64 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = shl i32 1, %18
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = shl i32 1, %24
  %26 = xor i32 %25, -1
  %27 = and i32 %23, %26
  %28 = load i64, i64* @gpio_ba, align 8
  %29 = load i64, i64* @RGIO, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @outb(i32 %27, i64 %30)
  br label %32

32:                                               ; preds = %22, %3
  %33 = call i32 @spin_unlock(i32* @gpio_lock)
  ret i32 0
}

declare dso_local i32 @sch_gpio_resume_set(%struct.gpio_chip*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
