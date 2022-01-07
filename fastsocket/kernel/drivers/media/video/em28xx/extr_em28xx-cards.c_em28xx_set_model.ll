; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-cards.c_em28xx_set_model.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-cards.c_em28xx_set_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@em28xx_boards = common dso_local global i32* null, align 8
@EM28XX_XCLK_IR_RC5_MODE = common dso_local global i32 0, align 4
@EM28XX_XCLK_FREQUENCY_12MHZ = common dso_local global i32 0, align 4
@EM28XX_I2C_CLK_WAIT_ENABLE = common dso_local global i32 0, align 4
@EM28XX_I2C_FREQ_100_KHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.em28xx*)* @em28xx_set_model to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em28xx_set_model(%struct.em28xx* %0) #0 {
  %2 = alloca %struct.em28xx*, align 8
  store %struct.em28xx* %0, %struct.em28xx** %2, align 8
  %3 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %4 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %3, i32 0, i32 1
  %5 = load i32*, i32** @em28xx_boards, align 8
  %6 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %7 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds i32, i32* %5, i64 %8
  %10 = call i32 @memcpy(%struct.TYPE_2__* %4, i32* %9, i32 8)
  %11 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %12 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EM28XX_XCLK_IR_RC5_MODE, align 4
  %18 = load i32, i32* @EM28XX_XCLK_FREQUENCY_12MHZ, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %21 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  br label %23

23:                                               ; preds = %16, %1
  %24 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %25 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @EM28XX_I2C_CLK_WAIT_ENABLE, align 4
  %31 = load i32, i32* @EM28XX_I2C_FREQ_100_KHZ, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %34 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  br label %36

36:                                               ; preds = %29, %23
  ret void
}

declare dso_local i32 @memcpy(%struct.TYPE_2__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
