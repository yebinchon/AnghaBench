; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_locomo.c_locomo_gpio_set_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_locomo.c_locomo_gpio_set_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.locomo = type { i32, i64 }

@LOCOMO_GPD = common dso_local global i64 0, align 8
@LOCOMO_GPE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @locomo_gpio_set_dir(%struct.device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.locomo*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.locomo* @dev_get_drvdata(%struct.device* %10)
  store %struct.locomo* %11, %struct.locomo** %7, align 8
  %12 = load %struct.locomo*, %struct.locomo** %7, align 8
  %13 = icmp ne %struct.locomo* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %74

15:                                               ; preds = %3
  %16 = load %struct.locomo*, %struct.locomo** %7, align 8
  %17 = getelementptr inbounds %struct.locomo, %struct.locomo* %16, i32 0, i32 0
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.locomo*, %struct.locomo** %7, align 8
  %21 = getelementptr inbounds %struct.locomo, %struct.locomo* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @LOCOMO_GPD, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @locomo_readl(i64 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %15
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %9, align 4
  br label %37

32:                                               ; preds = %15
  %33 = load i32, i32* %5, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %32, %28
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.locomo*, %struct.locomo** %7, align 8
  %40 = getelementptr inbounds %struct.locomo, %struct.locomo* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @LOCOMO_GPD, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @locomo_writel(i32 %38, i64 %43)
  %45 = load %struct.locomo*, %struct.locomo** %7, align 8
  %46 = getelementptr inbounds %struct.locomo, %struct.locomo* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @LOCOMO_GPE, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @locomo_readl(i64 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %37
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %9, align 4
  br label %62

57:                                               ; preds = %37
  %58 = load i32, i32* %5, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %9, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %57, %53
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.locomo*, %struct.locomo** %7, align 8
  %65 = getelementptr inbounds %struct.locomo, %struct.locomo* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @LOCOMO_GPE, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @locomo_writel(i32 %63, i64 %68)
  %70 = load %struct.locomo*, %struct.locomo** %7, align 8
  %71 = getelementptr inbounds %struct.locomo, %struct.locomo* %70, i32 0, i32 0
  %72 = load i64, i64* %8, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  br label %74

74:                                               ; preds = %62, %14
  ret void
}

declare dso_local %struct.locomo* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @locomo_readl(i64) #1

declare dso_local i32 @locomo_writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
