; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-core.c_em28xx_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-core.c_em28xx_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@EM28XX_SUSPEND = common dso_local global i32 0, align 4
@EM28XX_DIGITAL_MODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @em28xx_set_mode(%struct.em28xx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.em28xx*, align 8
  %5 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %7 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %52

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @EM28XX_SUSPEND, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %19 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %21 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %22 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @em28xx_gpio_set(%struct.em28xx* %20, i32 %24)
  store i32 %25, i32* %3, align 4
  br label %52

26:                                               ; preds = %12
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %29 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %31 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* @EM28XX_DIGITAL_MODE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %26
  %37 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %38 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %39 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @em28xx_gpio_set(%struct.em28xx* %37, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %52

43:                                               ; preds = %26
  %44 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %45 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %46 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.TYPE_4__* @INPUT(i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @em28xx_gpio_set(%struct.em28xx* %44, i32 %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %43, %36, %16, %11
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @em28xx_gpio_set(%struct.em28xx*, i32) #1

declare dso_local %struct.TYPE_4__* @INPUT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
