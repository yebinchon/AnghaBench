; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_vr41xx_giu.c_vr41xx_gpio_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_vr41xx_giu.c_vr41xx_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }

@GIUPIODL = common dso_local global i32 0, align 4
@GIUPIODH = common dso_local global i32 0, align 4
@GIUPODATL = common dso_local global i32 0, align 4
@GIUPODATH = common dso_local global i32 0, align 4
@giu_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @vr41xx_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vr41xx_gpio_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %13 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp uge i32 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %69

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = icmp ult i32 %18, 16
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* @GIUPIODL, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = shl i32 1, %22
  store i32 %23, i32* %8, align 4
  br label %47

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = icmp ult i32 %25, 32
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32, i32* @GIUPIODH, align 4
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %5, align 4
  %30 = sub i32 %29, 16
  %31 = shl i32 1, %30
  store i32 %31, i32* %8, align 4
  br label %46

32:                                               ; preds = %24
  %33 = load i32, i32* %5, align 4
  %34 = icmp ult i32 %33, 48
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32, i32* @GIUPODATL, align 4
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %5, align 4
  %38 = sub i32 %37, 32
  %39 = shl i32 1, %38
  store i32 %39, i32* %8, align 4
  br label %45

40:                                               ; preds = %32
  %41 = load i32, i32* @GIUPODATH, align 4
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %5, align 4
  %43 = sub i32 %42, 48
  %44 = shl i32 1, %43
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %40, %35
  br label %46

46:                                               ; preds = %45, %27
  br label %47

47:                                               ; preds = %46, %20
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @spin_lock_irqsave(i32* @giu_lock, i64 %48)
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @giu_read(i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  br label %63

58:                                               ; preds = %47
  %59 = load i32, i32* %8, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %9, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %58, %54
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @giu_write(i32 %64, i32 %65)
  %67 = load i64, i64* %10, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* @giu_lock, i64 %67)
  br label %69

69:                                               ; preds = %63, %16
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @giu_read(i32) #1

declare dso_local i32 @giu_write(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
