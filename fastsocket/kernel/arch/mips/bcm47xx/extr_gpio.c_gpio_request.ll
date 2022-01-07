; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/bcm47xx/extr_gpio.c_gpio_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/bcm47xx/extr_gpio.c_gpio_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@ssb_bcm47xx = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@BCM47XX_CHIPCO_GPIO_LINES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BCM47XX_EXTIF_GPIO_LINES = common dso_local global i32 0, align 4
@gpio_in_use = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpio_request(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %6 = call i64 @ssb_chipco_available(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ssb_bcm47xx, i32 0, i32 1))
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @BCM47XX_CHIPCO_GPIO_LINES, align 4
  %11 = icmp uge i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %34

15:                                               ; preds = %8, %2
  %16 = call i64 @ssb_extif_available(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ssb_bcm47xx, i32 0, i32 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @BCM47XX_EXTIF_GPIO_LINES, align 4
  %21 = icmp uge i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %34

25:                                               ; preds = %18, %15
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @gpio_in_use, align 4
  %28 = call i64 @test_and_set_bit(i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %34

33:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %30, %22, %12
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @ssb_chipco_available(i32*) #1

declare dso_local i64 @ssb_extif_available(i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
