; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_gpio-sch.c_sch_gpio_core_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_gpio-sch.c_sch_gpio_core_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }

@gpio_lock = common dso_local global i32 0, align 4
@CGLV = common dso_local global i32 0, align 4
@gpio_ba = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @sch_gpio_core_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sch_gpio_core_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = call i32 @spin_lock(i32* @gpio_lock)
  %11 = load i32, i32* @CGLV, align 4
  %12 = load i32, i32* %5, align 4
  %13 = udiv i32 %12, 8
  %14 = add i32 %11, %13
  %15 = trunc i32 %14 to i16
  store i16 %15, i16* %8, align 2
  %16 = load i32, i32* %5, align 4
  %17 = urem i32 %16, 8
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %9, align 2
  %19 = load i64, i64* @gpio_ba, align 8
  %20 = load i16, i16* %8, align 2
  %21 = zext i16 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = call i32 @inb(i64 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  %28 = load i16, i16* %9, align 2
  %29 = zext i16 %28 to i32
  %30 = shl i32 1, %29
  %31 = or i32 %27, %30
  %32 = load i64, i64* @gpio_ba, align 8
  %33 = load i16, i16* %8, align 2
  %34 = zext i16 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = call i32 @outb(i32 %31, i64 %35)
  br label %49

37:                                               ; preds = %3
  %38 = load i32, i32* %7, align 4
  %39 = load i16, i16* %9, align 2
  %40 = zext i16 %39 to i32
  %41 = shl i32 1, %40
  %42 = xor i32 %41, -1
  %43 = and i32 %38, %42
  %44 = load i64, i64* @gpio_ba, align 8
  %45 = load i16, i16* %8, align 2
  %46 = zext i16 %45 to i64
  %47 = add nsw i64 %44, %46
  %48 = call i32 @outb(i32 %43, i64 %47)
  br label %49

49:                                               ; preds = %37, %26
  %50 = call i32 @spin_unlock(i32* @gpio_lock)
  ret void
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
