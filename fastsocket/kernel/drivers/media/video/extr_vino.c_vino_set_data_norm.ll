; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_set_data_norm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_set_data_norm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.vino_channel_settings = type { i32, i32 }

@VINO_DATA_NORM_D1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VINO_DATA_NORM_PAL = common dso_local global i32 0, align 4
@VINO_DATA_NORM_NTSC = common dso_local global i32 0, align 4
@VINO_DATA_NORM_SECAM = common dso_local global i32 0, align 4
@vino_drvdata = common dso_local global %struct.TYPE_3__* null, align 8
@vino_data_norms = common dso_local global %struct.TYPE_4__* null, align 8
@core = common dso_local global i32 0, align 4
@s_std = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vino_channel_settings*, i32, i64*)* @vino_set_data_norm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vino_set_data_norm(%struct.vino_channel_settings* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vino_channel_settings*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vino_channel_settings* %0, %struct.vino_channel_settings** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %5, align 8
  %12 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %83

16:                                               ; preds = %3
  %17 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %5, align 8
  %18 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %77 [
    i32 129, label %20
    i32 130, label %28
    i32 128, label %28
  ]

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @VINO_DATA_NORM_D1, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %83

27:                                               ; preds = %20
  br label %80

28:                                               ; preds = %16, %16
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @VINO_DATA_NORM_PAL, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @VINO_DATA_NORM_NTSC, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @VINO_DATA_NORM_SECAM, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %83

43:                                               ; preds = %36, %32, %28
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vino_drvdata, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64*, i64** %7, align 8
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vino_data_norms, align 8
  %50 = load i32, i32* %6, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* @core, align 4
  %56 = load i32, i32* @s_std, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @decoder_call(i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vino_drvdata, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64*, i64** %7, align 8
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @spin_lock_irqsave(i32* %60, i64 %62)
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %43
  br label %81

67:                                               ; preds = %43
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %5, align 8
  %70 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %5, align 8
  %72 = call i32 @vino_set_default_clipping(%struct.vino_channel_settings* %71)
  %73 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %5, align 8
  %74 = call i32 @vino_set_default_scaling(%struct.vino_channel_settings* %73)
  %75 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %5, align 8
  %76 = call i32 @vino_set_default_framerate(%struct.vino_channel_settings* %75)
  br label %80

77:                                               ; preds = %16
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %83

80:                                               ; preds = %67, %27
  br label %81

81:                                               ; preds = %80, %66
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %81, %77, %40, %24, %15
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @decoder_call(i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vino_set_default_clipping(%struct.vino_channel_settings*) #1

declare dso_local i32 @vino_set_default_scaling(%struct.vino_channel_settings*) #1

declare dso_local i32 @vino_set_default_framerate(%struct.vino_channel_settings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
