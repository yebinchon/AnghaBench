; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-tvaudio.c_cx88_set_tvaudio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-tvaudio.c_cx88_set_tvaudio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i32, i32, i32, i32 }

@EN_BTSC_AUTO_STEREO = common dso_local global i32 0, align 4
@EN_A2_FORCE_MONO1 = common dso_local global i32 0, align 4
@EN_NICAM_AUTO_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_MONO = common dso_local global i32 0, align 4
@radio_deemphasis = common dso_local global i32 0, align 4
@AUD_I2SINPUTCNTL = common dso_local global i32 0, align 4
@AUD_I2SCNTL = common dso_local global i32 0, align 4
@EN_I2SIN_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%s/0: unknown tv audio mode [%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx88_set_tvaudio(%struct.cx88_core* %0) #0 {
  %2 = alloca %struct.cx88_core*, align 8
  store %struct.cx88_core* %0, %struct.cx88_core** %2, align 8
  %3 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %4 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %58 [
    i32 137, label %6
    i32 138, label %10
    i32 136, label %10
    i32 129, label %10
    i32 133, label %10
    i32 130, label %10
    i32 135, label %33
    i32 134, label %36
    i32 132, label %40
    i32 128, label %50
    i32 131, label %50
  ]

6:                                                ; preds = %1
  %7 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %8 = load i32, i32* @EN_BTSC_AUTO_STEREO, align 4
  %9 = call i32 @set_audio_standard_BTSC(%struct.cx88_core* %7, i32 0, i32 %8)
  br label %58

10:                                               ; preds = %1, %1, %1, %1, %1
  %11 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %12 = load i32, i32* @EN_A2_FORCE_MONO1, align 4
  %13 = call i32 @set_audio_standard_A2(%struct.cx88_core* %11, i32 %12)
  %14 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %15 = load i32, i32* @EN_NICAM_AUTO_STEREO, align 4
  %16 = call i32 @set_audio_standard_NICAM(%struct.cx88_core* %14, i32 %15)
  %17 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %18 = call i32 @cx88_detect_nicam(%struct.cx88_core* %17)
  %19 = icmp eq i32 0, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %10
  %21 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %22 = load i32, i32* @EN_A2_FORCE_MONO1, align 4
  %23 = call i32 @set_audio_standard_A2(%struct.cx88_core* %21, i32 %22)
  %24 = load i32, i32* @V4L2_TUNER_MODE_MONO, align 4
  %25 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %26 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %28 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  br label %32

29:                                               ; preds = %10
  %30 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %31 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %20
  br label %58

33:                                               ; preds = %1
  %34 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %35 = call i32 @set_audio_standard_EIAJ(%struct.cx88_core* %34)
  br label %58

36:                                               ; preds = %1
  %37 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %38 = load i32, i32* @radio_deemphasis, align 4
  %39 = call i32 @set_audio_standard_FM(%struct.cx88_core* %37, i32 %38)
  br label %58

40:                                               ; preds = %1
  %41 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %42 = call i32 @set_audio_start(%struct.cx88_core* %41, i32 1)
  %43 = load i32, i32* @AUD_I2SINPUTCNTL, align 4
  %44 = call i32 @cx_write(i32 %43, i32 0)
  %45 = load i32, i32* @AUD_I2SCNTL, align 4
  %46 = call i32 @cx_write(i32 %45, i32 1)
  %47 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %48 = load i32, i32* @EN_I2SIN_ENABLE, align 4
  %49 = call i32 @set_audio_finish(%struct.cx88_core* %47, i32 %48)
  br label %58

50:                                               ; preds = %1, %1
  %51 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %52 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %55 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %1, %50, %40, %36, %33, %32, %6
  ret void
}

declare dso_local i32 @set_audio_standard_BTSC(%struct.cx88_core*, i32, i32) #1

declare dso_local i32 @set_audio_standard_A2(%struct.cx88_core*, i32) #1

declare dso_local i32 @set_audio_standard_NICAM(%struct.cx88_core*, i32) #1

declare dso_local i32 @cx88_detect_nicam(%struct.cx88_core*) #1

declare dso_local i32 @set_audio_standard_EIAJ(%struct.cx88_core*) #1

declare dso_local i32 @set_audio_standard_FM(%struct.cx88_core*, i32) #1

declare dso_local i32 @set_audio_start(%struct.cx88_core*, i32) #1

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @set_audio_finish(%struct.cx88_core*, i32) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
