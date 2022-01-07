; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_gpio-sch.c_sch_gpio_core_direction_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_gpio-sch.c_sch_gpio_core_direction_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }

@gpio_lock = common dso_local global i32 0, align 4
@CGIO = common dso_local global i32 0, align 4
@gpio_ba = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @sch_gpio_core_direction_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sch_gpio_core_direction_in(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 @spin_lock(i32* @gpio_lock)
  %9 = load i32, i32* @CGIO, align 4
  %10 = load i32, i32* %4, align 4
  %11 = udiv i32 %10, 8
  %12 = add i32 %9, %11
  %13 = trunc i32 %12 to i16
  store i16 %13, i16* %6, align 2
  %14 = load i32, i32* %4, align 4
  %15 = urem i32 %14, 8
  %16 = trunc i32 %15 to i16
  store i16 %16, i16* %7, align 2
  %17 = load i64, i64* @gpio_ba, align 8
  %18 = load i16, i16* %6, align 2
  %19 = zext i16 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = call i32 @inb(i64 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i16, i16* %7, align 2
  %24 = zext i16 %23 to i32
  %25 = shl i32 1, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = load i16, i16* %7, align 2
  %31 = zext i16 %30 to i32
  %32 = shl i32 1, %31
  %33 = or i32 %29, %32
  %34 = load i64, i64* @gpio_ba, align 8
  %35 = load i16, i16* %6, align 2
  %36 = zext i16 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = call i32 @outb(i32 %33, i64 %37)
  br label %39

39:                                               ; preds = %28, %2
  %40 = call i32 @spin_unlock(i32* @gpio_lock)
  ret i32 0
}

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
