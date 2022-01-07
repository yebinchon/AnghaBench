; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_gpiolib.c_gpio_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_gpiolib.c_gpio_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { i32, %struct.gpio_chip* }
%struct.gpio_chip = type { i32, i64, i32 (%struct.gpio_chip*, i64)*, i64 }

@extra_checks = common dso_local global i64 0, align 8
@gpio_lock = common dso_local global i32 0, align 4
@gpio_desc = common dso_local global %struct.gpio_desc* null, align 8
@FLAG_REQUESTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gpio_free(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.gpio_desc*, align 8
  %5 = alloca %struct.gpio_chip*, align 8
  store i32 %0, i32* %2, align 4
  %6 = call i32 (...) @might_sleep()
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @gpio_is_valid(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* @extra_checks, align 8
  %12 = call i32 @WARN_ON(i64 %11)
  br label %84

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @gpio_unexport(i32 %14)
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @spin_lock_irqsave(i32* @gpio_lock, i64 %16)
  %18 = load %struct.gpio_desc*, %struct.gpio_desc** @gpio_desc, align 8
  %19 = load i32, i32* %2, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %18, i64 %20
  store %struct.gpio_desc* %21, %struct.gpio_desc** %4, align 8
  %22 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %23 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %22, i32 0, i32 1
  %24 = load %struct.gpio_chip*, %struct.gpio_chip** %23, align 8
  store %struct.gpio_chip* %24, %struct.gpio_chip** %5, align 8
  %25 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %26 = icmp ne %struct.gpio_chip* %25, null
  br i1 %26, label %27, label %78

27:                                               ; preds = %13
  %28 = load i32, i32* @FLAG_REQUESTED, align 4
  %29 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %30 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %29, i32 0, i32 0
  %31 = call i64 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %78

33:                                               ; preds = %27
  %34 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %35 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %34, i32 0, i32 2
  %36 = load i32 (%struct.gpio_chip*, i64)*, i32 (%struct.gpio_chip*, i64)** %35, align 8
  %37 = icmp ne i32 (%struct.gpio_chip*, i64)* %36, null
  br i1 %37, label %38, label %65

38:                                               ; preds = %33
  %39 = load i64, i64* %3, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* @gpio_lock, i64 %39)
  %41 = load i64, i64* @extra_checks, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %45 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %43, %38
  %49 = phi i1 [ false, %38 ], [ %47, %43 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @might_sleep_if(i32 %50)
  %52 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %53 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %52, i32 0, i32 2
  %54 = load i32 (%struct.gpio_chip*, i64)*, i32 (%struct.gpio_chip*, i64)** %53, align 8
  %55 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %56 = load i32, i32* %2, align 4
  %57 = zext i32 %56 to i64
  %58 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %59 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %57, %60
  %62 = call i32 %54(%struct.gpio_chip* %55, i64 %61)
  %63 = load i64, i64* %3, align 8
  %64 = call i32 @spin_lock_irqsave(i32* @gpio_lock, i64 %63)
  br label %65

65:                                               ; preds = %48, %33
  %66 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %67 = call i32 @desc_set_label(%struct.gpio_desc* %66, i32* null)
  %68 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %69 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %68, i32 0, i32 1
  %70 = load %struct.gpio_chip*, %struct.gpio_chip** %69, align 8
  %71 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @module_put(i32 %72)
  %74 = load i32, i32* @FLAG_REQUESTED, align 4
  %75 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %76 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %75, i32 0, i32 0
  %77 = call i32 @clear_bit(i32 %74, i32* %76)
  br label %81

78:                                               ; preds = %27, %13
  %79 = load i64, i64* @extra_checks, align 8
  %80 = call i32 @WARN_ON(i64 %79)
  br label %81

81:                                               ; preds = %78, %65
  %82 = load i64, i64* %3, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* @gpio_lock, i64 %82)
  br label %84

84:                                               ; preds = %81, %10
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @gpio_is_valid(i32) #1

declare dso_local i32 @WARN_ON(i64) #1

declare dso_local i32 @gpio_unexport(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @might_sleep_if(i32) #1

declare dso_local i32 @desc_set_label(%struct.gpio_desc*, i32*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
