; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/mach-a3/extr_gpio.c_gpio_write_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/mach-a3/extr_gpio.c_gpio_write_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_private = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_private*, i64*, i8)* @gpio_write_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_write_byte(%struct.gpio_private* %0, i64* %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.gpio_private*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.gpio_private* %0, %struct.gpio_private** %4, align 8
  store i64* %1, i64** %5, align 8
  store i8 %2, i8* %6, align 1
  %8 = load %struct.gpio_private*, %struct.gpio_private** %4, align 8
  %9 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %3
  store i32 7, i32* %7, align 4
  br label %13

13:                                               ; preds = %27, %12
  %14 = load i32, i32* %7, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = load i64*, i64** %5, align 8
  %18 = load i8, i8* %6, align 1
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.gpio_private*, %struct.gpio_private** %4, align 8
  %21 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.gpio_private*, %struct.gpio_private** %4, align 8
  %24 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @gpio_write_bit(i64* %17, i8 zeroext %18, i32 %19, i32 %22, i32 %25)
  br label %27

27:                                               ; preds = %16
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %7, align 4
  br label %13

30:                                               ; preds = %13
  br label %50

31:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %46, %31
  %33 = load i32, i32* %7, align 4
  %34 = icmp sle i32 %33, 7
  br i1 %34, label %35, label %49

35:                                               ; preds = %32
  %36 = load i64*, i64** %5, align 8
  %37 = load i8, i8* %6, align 1
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.gpio_private*, %struct.gpio_private** %4, align 8
  %40 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.gpio_private*, %struct.gpio_private** %4, align 8
  %43 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @gpio_write_bit(i64* %36, i8 zeroext %37, i32 %38, i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %35
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %32

49:                                               ; preds = %32
  br label %50

50:                                               ; preds = %49, %30
  ret void
}

declare dso_local i32 @gpio_write_bit(i64*, i8 zeroext, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
