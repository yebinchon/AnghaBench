; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-tvaudio.c_saa7134_tvaudio_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-tvaudio.c_saa7134_tvaudio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.saa7134_dev = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@saa7134_boards = common dso_local global %struct.TYPE_4__* null, align 8
@UNSET = common dso_local global i32 0, align 4
@audio_clock_override = common dso_local global i32 0, align 4
@SAA7134_AUDIO_PLL_CTRL = common dso_local global i32 0, align 4
@SAA7134_AUDIO_CLOCK0 = common dso_local global i32 0, align 4
@SAA7134_AUDIO_CLOCK1 = common dso_local global i32 0, align 4
@SAA7134_AUDIO_CLOCK2 = common dso_local global i32 0, align 4
@SAA7134_NICAM_ERROR_LOW = common dso_local global i32 0, align 4
@SAA7134_NICAM_ERROR_HIGH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @saa7134_tvaudio_init(%struct.saa7134_dev* %0) #0 {
  %2 = alloca %struct.saa7134_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @saa7134_boards, align 8
  %5 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %6 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @UNSET, align 4
  %12 = load i32, i32* @audio_clock_override, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @audio_clock_override, align 4
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %14, %1
  %17 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %18 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %59 [
    i32 129, label %22
    i32 130, label %52
    i32 128, label %52
  ]

22:                                               ; preds = %16
  %23 = load i32, i32* @SAA7134_AUDIO_PLL_CTRL, align 4
  %24 = call i32 @saa_writeb(i32 %23, i32 0)
  %25 = call i32 (...) @need_resched()
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 (...) @schedule()
  br label %31

29:                                               ; preds = %22
  %30 = call i32 @udelay(i32 10)
  br label %31

31:                                               ; preds = %29, %27
  %32 = load i32, i32* @SAA7134_AUDIO_CLOCK0, align 4
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %33, 255
  %35 = call i32 @saa_writeb(i32 %32, i32 %34)
  %36 = load i32, i32* @SAA7134_AUDIO_CLOCK1, align 4
  %37 = load i32, i32* %3, align 4
  %38 = ashr i32 %37, 8
  %39 = and i32 %38, 255
  %40 = call i32 @saa_writeb(i32 %36, i32 %39)
  %41 = load i32, i32* @SAA7134_AUDIO_CLOCK2, align 4
  %42 = load i32, i32* %3, align 4
  %43 = ashr i32 %42, 16
  %44 = and i32 %43, 255
  %45 = call i32 @saa_writeb(i32 %41, i32 %44)
  %46 = load i32, i32* @SAA7134_AUDIO_PLL_CTRL, align 4
  %47 = call i32 @saa_writeb(i32 %46, i32 1)
  %48 = load i32, i32* @SAA7134_NICAM_ERROR_LOW, align 4
  %49 = call i32 @saa_writeb(i32 %48, i32 20)
  %50 = load i32, i32* @SAA7134_NICAM_ERROR_HIGH, align 4
  %51 = call i32 @saa_writeb(i32 %50, i32 80)
  br label %59

52:                                               ; preds = %16, %16
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @saa_writel(i32 358, i32 %53)
  %55 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %56 = call i32 @saa_dsp_writel(%struct.saa7134_dev* %55, i32 285, i32 0)
  %57 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %58 = call i32 @saa_dsp_writel(%struct.saa7134_dev* %57, i32 276, i32 0)
  br label %59

59:                                               ; preds = %52, %16, %31
  ret void
}

declare dso_local i32 @saa_writeb(i32, i32) #1

declare dso_local i32 @need_resched(...) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @saa_writel(i32, i32) #1

declare dso_local i32 @saa_dsp_writel(%struct.saa7134_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
