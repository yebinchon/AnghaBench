; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-locomo.c_locomoled_brightness_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-locomo.c_locomoled_brightness_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.locomo_dev = type { i64 }

@LOCOMO_LPT_TOFH = common dso_local global i32 0, align 4
@LOCOMO_LPT_TOFL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.led_classdev*, i32, i32)* @locomoled_brightness_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @locomoled_brightness_set(%struct.led_classdev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.led_classdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.locomo_dev*, align 8
  %8 = alloca i64, align 8
  store %struct.led_classdev* %0, %struct.led_classdev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %10 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.locomo_dev* @LOCOMO_DEV(i32 %13)
  store %struct.locomo_dev* %14, %struct.locomo_dev** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @local_irq_save(i64 %15)
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = load i32, i32* @LOCOMO_LPT_TOFH, align 4
  %21 = load %struct.locomo_dev*, %struct.locomo_dev** %7, align 8
  %22 = getelementptr inbounds %struct.locomo_dev, %struct.locomo_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = call i32 @locomo_writel(i32 %20, i64 %26)
  br label %37

28:                                               ; preds = %3
  %29 = load i32, i32* @LOCOMO_LPT_TOFL, align 4
  %30 = load %struct.locomo_dev*, %struct.locomo_dev** %7, align 8
  %31 = getelementptr inbounds %struct.locomo_dev, %struct.locomo_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = call i32 @locomo_writel(i32 %29, i64 %35)
  br label %37

37:                                               ; preds = %28, %19
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @local_irq_restore(i64 %38)
  ret void
}

declare dso_local %struct.locomo_dev* @LOCOMO_DEV(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @locomo_writel(i32, i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
