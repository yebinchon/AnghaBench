; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/mach-a3/extr_gpio.c_gpio_write_bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/mach-a3/extr_gpio.c_gpio_write_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i8, i32, i8, i8)* @gpio_write_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_write_bit(i64* %0, i8 zeroext %1, i32 %2, i8 zeroext %3, i8 zeroext %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store i8 %1, i8* %7, align 1
  store i32 %2, i32* %8, align 4
  store i8 %3, i8* %9, align 1
  store i8 %4, i8* %10, align 1
  %12 = load i64*, i64** %6, align 8
  %13 = call zeroext i8 @readl(i64* %12)
  %14 = zext i8 %13 to i32
  %15 = load i8, i8* %9, align 1
  %16 = zext i8 %15 to i32
  %17 = xor i32 %16, -1
  %18 = and i32 %14, %17
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = load i64*, i64** %6, align 8
  %22 = call i32 @writel(i64 %20, i64* %21)
  %23 = load i8, i8* %7, align 1
  %24 = zext i8 %23 to i32
  %25 = load i32, i32* %8, align 4
  %26 = shl i32 1, %25
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %5
  %30 = load i8, i8* %10, align 1
  %31 = zext i8 %30 to i64
  %32 = load i64, i64* %11, align 8
  %33 = or i64 %32, %31
  store i64 %33, i64* %11, align 8
  br label %41

34:                                               ; preds = %5
  %35 = load i8, i8* %10, align 1
  %36 = zext i8 %35 to i32
  %37 = xor i32 %36, -1
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %11, align 8
  %40 = and i64 %39, %38
  store i64 %40, i64* %11, align 8
  br label %41

41:                                               ; preds = %34, %29
  %42 = load i64, i64* %11, align 8
  %43 = load i64*, i64** %6, align 8
  %44 = call i32 @writel(i64 %42, i64* %43)
  %45 = load i8, i8* %9, align 1
  %46 = zext i8 %45 to i64
  %47 = load i64, i64* %11, align 8
  %48 = or i64 %47, %46
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i64*, i64** %6, align 8
  %51 = call i32 @writel(i64 %49, i64* %50)
  ret void
}

declare dso_local zeroext i8 @readl(i64*) #1

declare dso_local i32 @writel(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
