; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/iforce/extr_iforce-main.c_iforce_playback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/iforce/extr_iforce-main.c_iforce_playback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.iforce = type { %struct.iforce_core_effect* }
%struct.iforce_core_effect = type { i32 }

@FF_CORE_SHOULD_PLAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i32, i32)* @iforce_playback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iforce_playback(%struct.input_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iforce*, align 8
  %8 = alloca %struct.iforce_core_effect*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %10 = call %struct.iforce* @input_get_drvdata(%struct.input_dev* %9)
  store %struct.iforce* %10, %struct.iforce** %7, align 8
  %11 = load %struct.iforce*, %struct.iforce** %7, align 8
  %12 = getelementptr inbounds %struct.iforce, %struct.iforce* %11, i32 0, i32 0
  %13 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %13, i64 %15
  store %struct.iforce_core_effect* %16, %struct.iforce_core_effect** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load i32, i32* @FF_CORE_SHOULD_PLAY, align 4
  %21 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %8, align 8
  %22 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @set_bit(i32 %20, i32 %23)
  br label %31

25:                                               ; preds = %3
  %26 = load i32, i32* @FF_CORE_SHOULD_PLAY, align 4
  %27 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %8, align 8
  %28 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @clear_bit(i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %25, %19
  %32 = load %struct.iforce*, %struct.iforce** %7, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @iforce_control_playback(%struct.iforce* %32, i32 %33, i32 %34)
  ret i32 0
}

declare dso_local %struct.iforce* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @iforce_control_playback(%struct.iforce*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
