; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/drivers/extr_gpio.c_gpio_write_bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/drivers/extr_gpio.c_gpio_write_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_private = type { i32*, i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_private*, i8, i32)* @gpio_write_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_write_bit(%struct.gpio_private* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_private*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.gpio_private* %0, %struct.gpio_private** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %7 = load %struct.gpio_private*, %struct.gpio_private** %4, align 8
  %8 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = xor i32 %9, -1
  %11 = load %struct.gpio_private*, %struct.gpio_private** %4, align 8
  %12 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %10
  store i32 %15, i32* %13, align 4
  %16 = load %struct.gpio_private*, %struct.gpio_private** %4, align 8
  %17 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32 %15, i32* %18, align 4
  %19 = load i8, i8* %5, align 1
  %20 = zext i8 %19 to i32
  %21 = load i32, i32* %6, align 4
  %22 = shl i32 1, %21
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %3
  %26 = load %struct.gpio_private*, %struct.gpio_private** %4, align 8
  %27 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.gpio_private*, %struct.gpio_private** %4, align 8
  %30 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %28
  store i32 %33, i32* %31, align 4
  %34 = load %struct.gpio_private*, %struct.gpio_private** %4, align 8
  %35 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  store i32 %33, i32* %36, align 4
  br label %50

37:                                               ; preds = %3
  %38 = load %struct.gpio_private*, %struct.gpio_private** %4, align 8
  %39 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = xor i32 %40, -1
  %42 = load %struct.gpio_private*, %struct.gpio_private** %4, align 8
  %43 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %41
  store i32 %46, i32* %44, align 4
  %47 = load %struct.gpio_private*, %struct.gpio_private** %4, align 8
  %48 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  store i32 %46, i32* %49, align 4
  br label %50

50:                                               ; preds = %37, %25
  %51 = load %struct.gpio_private*, %struct.gpio_private** %4, align 8
  %52 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.gpio_private*, %struct.gpio_private** %4, align 8
  %55 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %53
  store i32 %58, i32* %56, align 4
  %59 = load %struct.gpio_private*, %struct.gpio_private** %4, align 8
  %60 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  store i32 %58, i32* %61, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
