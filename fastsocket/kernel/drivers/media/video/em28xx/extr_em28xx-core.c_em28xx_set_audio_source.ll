; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-core.c_em28xx_set_audio_source.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-core.c_em28xx_set_audio_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i32, %struct.TYPE_5__, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_6__ = type { i64 }

@EM2800_AUDIO_SRC_TUNER = common dso_local global i32 0, align 4
@EM2800_AUDIO_SRC_LINE = common dso_local global i32 0, align 4
@EM2800_R08_AUDIOSRC = common dso_local global i32 0, align 4
@EM28XX_AUDIO_SRC_TUNER = common dso_local global i32 0, align 4
@EM28XX_AUDIO_SRC_LINE = common dso_local global i32 0, align 4
@EM28XX_R0E_AUDIOSRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*)* @em28xx_set_audio_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_set_audio_source(%struct.em28xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.em28xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %3, align 8
  %6 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %7 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %13 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 129
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* @EM2800_AUDIO_SRC_TUNER, align 4
  store i32 %17, i32* %5, align 4
  br label %20

18:                                               ; preds = %11
  %19 = load i32, i32* @EM2800_AUDIO_SRC_LINE, align 4
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %22 = load i32, i32* @EM2800_R08_AUDIOSRC, align 4
  %23 = call i32 @em28xx_write_regs(%struct.em28xx* %21, i32 %22, i32* %5, i32 1)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %94

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28, %1
  %30 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %31 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @EM28XX_AUDIO_SRC_TUNER, align 4
  store i32 %36, i32* %5, align 4
  br label %46

37:                                               ; preds = %29
  %38 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %39 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %43 [
    i32 129, label %41
  ]

41:                                               ; preds = %37
  %42 = load i32, i32* @EM28XX_AUDIO_SRC_TUNER, align 4
  store i32 %42, i32* %5, align 4
  br label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @EM28XX_AUDIO_SRC_LINE, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %43, %41
  br label %46

46:                                               ; preds = %45, %35
  %47 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %48 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %46
  %53 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %54 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %59 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %60 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @em28xx_gpio_set(%struct.em28xx* %58, i64 %62)
  br label %73

64:                                               ; preds = %52, %46
  %65 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %66 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %67 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call %struct.TYPE_6__* @INPUT(i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @em28xx_gpio_set(%struct.em28xx* %65, i64 %71)
  br label %73

73:                                               ; preds = %64, %57
  %74 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %75 = load i32, i32* @EM28XX_R0E_AUDIOSRC, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @em28xx_write_reg_bits(%struct.em28xx* %74, i32 %75, i32 %76, i32 192)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i32, i32* %4, align 4
  store i32 %81, i32* %2, align 4
  br label %94

82:                                               ; preds = %73
  %83 = call i32 @msleep(i32 5)
  %84 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %85 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  switch i32 %87, label %89 [
    i32 128, label %88
  ]

88:                                               ; preds = %82
  br label %92

89:                                               ; preds = %82
  %90 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %91 = call i32 @set_ac97_input(%struct.em28xx* %90)
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %89, %88
  %93 = load i32, i32* %4, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %92, %80, %26
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @em28xx_write_regs(%struct.em28xx*, i32, i32*, i32) #1

declare dso_local i32 @em28xx_gpio_set(%struct.em28xx*, i64) #1

declare dso_local %struct.TYPE_6__* @INPUT(i32) #1

declare dso_local i32 @em28xx_write_reg_bits(%struct.em28xx*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @set_ac97_input(%struct.em28xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
