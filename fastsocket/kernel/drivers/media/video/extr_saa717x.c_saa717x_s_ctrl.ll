; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa717x.c_saa717x_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa717x.c_saa717x_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.saa717x_state = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @saa717x_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa717x_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.saa717x_state*, align 8
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %6 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %7 = call %struct.v4l2_subdev* @to_sd(%struct.v4l2_ctrl* %6)
  store %struct.v4l2_subdev* %7, %struct.v4l2_subdev** %4, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.saa717x_state* @to_state(%struct.v4l2_subdev* %8)
  store %struct.saa717x_state* %9, %struct.saa717x_state** %5, align 8
  %10 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %11 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %67 [
    i32 131, label %13
    i32 130, label %19
    i32 128, label %25
    i32 129, label %31
    i32 134, label %37
    i32 132, label %43
    i32 136, label %49
    i32 133, label %55
    i32 135, label %61
  ]

13:                                               ; preds = %1
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %15 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %16 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @saa717x_write(%struct.v4l2_subdev* %14, i32 266, i32 %17)
  store i32 0, i32* %2, align 4
  br label %72

19:                                               ; preds = %1
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %21 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %22 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @saa717x_write(%struct.v4l2_subdev* %20, i32 267, i32 %23)
  store i32 0, i32* %2, align 4
  br label %72

25:                                               ; preds = %1
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %27 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %28 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @saa717x_write(%struct.v4l2_subdev* %26, i32 268, i32 %29)
  store i32 0, i32* %2, align 4
  br label %72

31:                                               ; preds = %1
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %33 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %34 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @saa717x_write(%struct.v4l2_subdev* %32, i32 269, i32 %35)
  store i32 0, i32* %2, align 4
  br label %72

37:                                               ; preds = %1
  %38 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %39 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.saa717x_state*, %struct.saa717x_state** %5, align 8
  %42 = getelementptr inbounds %struct.saa717x_state, %struct.saa717x_state* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  br label %68

43:                                               ; preds = %1
  %44 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %45 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.saa717x_state*, %struct.saa717x_state** %5, align 8
  %48 = getelementptr inbounds %struct.saa717x_state, %struct.saa717x_state* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  br label %68

49:                                               ; preds = %1
  %50 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %51 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.saa717x_state*, %struct.saa717x_state** %5, align 8
  %54 = getelementptr inbounds %struct.saa717x_state, %struct.saa717x_state* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  br label %68

55:                                               ; preds = %1
  %56 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %57 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.saa717x_state*, %struct.saa717x_state** %5, align 8
  %60 = getelementptr inbounds %struct.saa717x_state, %struct.saa717x_state* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %68

61:                                               ; preds = %1
  %62 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %63 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.saa717x_state*, %struct.saa717x_state** %5, align 8
  %66 = getelementptr inbounds %struct.saa717x_state, %struct.saa717x_state* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  br label %68

67:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %72

68:                                               ; preds = %61, %55, %49, %43, %37
  %69 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %70 = load %struct.saa717x_state*, %struct.saa717x_state** %5, align 8
  %71 = call i32 @set_audio_regs(%struct.v4l2_subdev* %69, %struct.saa717x_state* %70)
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %68, %67, %31, %25, %19, %13
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.v4l2_subdev* @to_sd(%struct.v4l2_ctrl*) #1

declare dso_local %struct.saa717x_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @saa717x_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @set_audio_regs(%struct.v4l2_subdev*, %struct.saa717x_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
