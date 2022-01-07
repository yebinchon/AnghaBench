; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_gpio-sch.c_sch_gpio_core_direction_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_gpio-sch.c_sch_gpio_core_direction_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }

@gpio_lock = common dso_local global i32 0, align 4
@CGIO = common dso_local global i32 0, align 4
@gpio_ba = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @sch_gpio_core_direction_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sch_gpio_core_direction_out(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @sch_gpio_core_set(%struct.gpio_chip* %10, i32 %11, i32 %12)
  %14 = call i32 @spin_lock(i32* @gpio_lock)
  %15 = load i32, i32* @CGIO, align 4
  %16 = load i32, i32* %5, align 4
  %17 = udiv i32 %16, 8
  %18 = add i32 %15, %17
  %19 = trunc i32 %18 to i16
  store i16 %19, i16* %8, align 2
  %20 = load i32, i32* %5, align 4
  %21 = urem i32 %20, 8
  %22 = trunc i32 %21 to i16
  store i16 %22, i16* %9, align 2
  %23 = load i64, i64* @gpio_ba, align 8
  %24 = load i16, i16* %8, align 2
  %25 = zext i16 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = call i32 @inb(i64 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i16, i16* %9, align 2
  %30 = zext i16 %29 to i32
  %31 = shl i32 1, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %3
  %35 = load i32, i32* %7, align 4
  %36 = load i16, i16* %9, align 2
  %37 = zext i16 %36 to i32
  %38 = shl i32 1, %37
  %39 = xor i32 %38, -1
  %40 = and i32 %35, %39
  %41 = load i64, i64* @gpio_ba, align 8
  %42 = load i16, i16* %8, align 2
  %43 = zext i16 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = call i32 @outb(i32 %40, i64 %44)
  br label %46

46:                                               ; preds = %34, %3
  %47 = call i32 @spin_unlock(i32* @gpio_lock)
  ret i32 0
}

declare dso_local i32 @sch_gpio_core_set(%struct.gpio_chip*, i32, i32) #1

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
