; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_vr41xx_giu.c_vr41xx_gpio_pullupdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_vr41xx_giu.c_vr41xx_gpio_pullupdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@giu_flags = common dso_local global i32 0, align 4
@GPIO_HAS_PULLUPDOWN_IO = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@giu_lock = common dso_local global i32 0, align 4
@GPIO_PULL_UP = common dso_local global i64 0, align 8
@GPIO_PULL_DOWN = common dso_local global i64 0, align 8
@GIUTERMUPDN = common dso_local global i32 0, align 4
@GIUUSEUPDN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vr41xx_gpio_pullupdown(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %9 = load i32, i32* @giu_flags, align 4
  %10 = load i32, i32* @GPIO_HAS_PULLUPDOWN_IO, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @GPIO_HAS_PULLUPDOWN_IO, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EPERM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %75

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp uge i32 %18, 15
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %75

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  %25 = shl i32 1, %24
  store i32 %25, i32* %7, align 4
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @spin_lock_irqsave(i32* @giu_lock, i64 %26)
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @GPIO_PULL_UP, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %23
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @GPIO_PULL_DOWN, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %62

35:                                               ; preds = %31, %23
  %36 = load i32, i32* @GIUTERMUPDN, align 4
  %37 = call i32 @giu_read(i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @GPIO_PULL_UP, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %50

45:                                               ; preds = %35
  %46 = load i32, i32* %7, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %45, %41
  %51 = load i32, i32* @GIUTERMUPDN, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @giu_write(i32 %51, i32 %52)
  %54 = load i32, i32* @GIUUSEUPDN, align 4
  %55 = call i32 @giu_read(i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* @GIUUSEUPDN, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @giu_write(i32 %59, i32 %60)
  br label %72

62:                                               ; preds = %31
  %63 = load i32, i32* @GIUUSEUPDN, align 4
  %64 = call i32 @giu_read(i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %6, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* @GIUUSEUPDN, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @giu_write(i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %62, %50
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* @giu_lock, i64 %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %72, %20, %14
  %76 = load i32, i32* %3, align 4
  ret i32 %76
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
