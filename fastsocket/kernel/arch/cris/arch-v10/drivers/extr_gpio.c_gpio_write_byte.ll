; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/drivers/extr_gpio.c_gpio_write_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/drivers/extr_gpio.c_gpio_write_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_private = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_private*, i8)* @gpio_write_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_write_byte(%struct.gpio_private* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.gpio_private*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.gpio_private* %0, %struct.gpio_private** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.gpio_private*, %struct.gpio_private** %3, align 8
  %7 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  store i32 7, i32* %5, align 4
  br label %11

11:                                               ; preds = %19, %10
  %12 = load i32, i32* %5, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load %struct.gpio_private*, %struct.gpio_private** %3, align 8
  %16 = load i8, i8* %4, align 1
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @gpio_write_bit(%struct.gpio_private* %15, i8 zeroext %16, i32 %17)
  br label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %5, align 4
  br label %11

22:                                               ; preds = %11
  br label %36

23:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %32, %23
  %25 = load i32, i32* %5, align 4
  %26 = icmp sle i32 %25, 7
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load %struct.gpio_private*, %struct.gpio_private** %3, align 8
  %29 = load i8, i8* %4, align 1
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @gpio_write_bit(%struct.gpio_private* %28, i8 zeroext %29, i32 %30)
  br label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %24

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35, %22
  ret void
}

declare dso_local i32 @gpio_write_bit(%struct.gpio_private*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
