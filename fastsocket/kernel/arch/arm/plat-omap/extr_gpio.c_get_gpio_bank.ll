; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_gpio.c_get_gpio_bank.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_gpio.c_get_gpio_bank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_bank = type { i32 }

@gpio_bank = common dso_local global %struct.gpio_bank* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gpio_bank* (i32)* @get_gpio_bank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gpio_bank* @get_gpio_bank(i32 %0) #0 {
  %2 = alloca %struct.gpio_bank*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = call i64 (...) @cpu_is_omap15xx()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @OMAP_GPIO_IS_MPUIO(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load %struct.gpio_bank*, %struct.gpio_bank** @gpio_bank, align 8
  %12 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %11, i64 0
  store %struct.gpio_bank* %12, %struct.gpio_bank** %2, align 8
  br label %73

13:                                               ; preds = %6
  %14 = load %struct.gpio_bank*, %struct.gpio_bank** @gpio_bank, align 8
  %15 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %14, i64 1
  store %struct.gpio_bank* %15, %struct.gpio_bank** %2, align 8
  br label %73

16:                                               ; preds = %1
  %17 = call i64 (...) @cpu_is_omap16xx()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = call i64 @OMAP_GPIO_IS_MPUIO(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load %struct.gpio_bank*, %struct.gpio_bank** @gpio_bank, align 8
  %25 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %24, i64 0
  store %struct.gpio_bank* %25, %struct.gpio_bank** %2, align 8
  br label %73

26:                                               ; preds = %19
  %27 = load %struct.gpio_bank*, %struct.gpio_bank** @gpio_bank, align 8
  %28 = load i32, i32* %3, align 4
  %29 = ashr i32 %28, 4
  %30 = add nsw i32 1, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %27, i64 %31
  store %struct.gpio_bank* %32, %struct.gpio_bank** %2, align 8
  br label %73

33:                                               ; preds = %16
  %34 = call i64 (...) @cpu_is_omap7xx()
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %33
  %37 = load i32, i32* %3, align 4
  %38 = call i64 @OMAP_GPIO_IS_MPUIO(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load %struct.gpio_bank*, %struct.gpio_bank** @gpio_bank, align 8
  %42 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %41, i64 0
  store %struct.gpio_bank* %42, %struct.gpio_bank** %2, align 8
  br label %73

43:                                               ; preds = %36
  %44 = load %struct.gpio_bank*, %struct.gpio_bank** @gpio_bank, align 8
  %45 = load i32, i32* %3, align 4
  %46 = ashr i32 %45, 5
  %47 = add nsw i32 1, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %44, i64 %48
  store %struct.gpio_bank* %49, %struct.gpio_bank** %2, align 8
  br label %73

50:                                               ; preds = %33
  %51 = call i64 (...) @cpu_is_omap24xx()
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load %struct.gpio_bank*, %struct.gpio_bank** @gpio_bank, align 8
  %55 = load i32, i32* %3, align 4
  %56 = ashr i32 %55, 5
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %54, i64 %57
  store %struct.gpio_bank* %58, %struct.gpio_bank** %2, align 8
  br label %73

59:                                               ; preds = %50
  %60 = call i64 (...) @cpu_is_omap34xx()
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = call i64 (...) @cpu_is_omap44xx()
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62, %59
  %66 = load %struct.gpio_bank*, %struct.gpio_bank** @gpio_bank, align 8
  %67 = load i32, i32* %3, align 4
  %68 = ashr i32 %67, 5
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %66, i64 %69
  store %struct.gpio_bank* %70, %struct.gpio_bank** %2, align 8
  br label %73

71:                                               ; preds = %62
  %72 = call i32 (...) @BUG()
  store %struct.gpio_bank* null, %struct.gpio_bank** %2, align 8
  br label %73

73:                                               ; preds = %71, %65, %53, %43, %40, %26, %23, %13, %10
  %74 = load %struct.gpio_bank*, %struct.gpio_bank** %2, align 8
  ret %struct.gpio_bank* %74
}

declare dso_local i64 @cpu_is_omap15xx(...) #1

declare dso_local i64 @OMAP_GPIO_IS_MPUIO(i32) #1

declare dso_local i64 @cpu_is_omap16xx(...) #1

declare dso_local i64 @cpu_is_omap7xx(...) #1

declare dso_local i64 @cpu_is_omap24xx(...) #1

declare dso_local i64 @cpu_is_omap34xx(...) #1

declare dso_local i64 @cpu_is_omap44xx(...) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
