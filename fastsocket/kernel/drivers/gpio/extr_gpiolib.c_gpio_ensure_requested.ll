; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_gpiolib.c_gpio_ensure_requested.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_gpiolib.c_gpio_ensure_requested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { i32, %struct.gpio_chip* }
%struct.gpio_chip = type { i32, i64, i32 }

@FLAG_REQUESTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"autorequest GPIO-%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"GPIO-%d: module can't be gotten \0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"[auto]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_desc*, i32)* @gpio_ensure_requested to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_ensure_requested(%struct.gpio_desc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca i32, align 4
  store %struct.gpio_desc* %0, %struct.gpio_desc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %9 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %8, i32 0, i32 1
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %9, align 8
  store %struct.gpio_chip* %10, %struct.gpio_chip** %6, align 8
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %12 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = add i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @FLAG_REQUESTED, align 4
  %17 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %18 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %17, i32 0, i32 0
  %19 = call i64 @test_and_set_bit(i32 %16, i32* %18)
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @WARN(i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %2
  %26 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %27 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @try_module_get(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @FLAG_REQUESTED, align 4
  %35 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %36 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %35, i32 0, i32 0
  %37 = call i32 @clear_bit(i32 %34, i32* %36)
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %50

40:                                               ; preds = %25
  %41 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %42 = call i32 @desc_set_label(%struct.gpio_desc* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %44 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %50

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %2
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %47, %31
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @WARN(i32, i8*, i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @desc_set_label(%struct.gpio_desc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
