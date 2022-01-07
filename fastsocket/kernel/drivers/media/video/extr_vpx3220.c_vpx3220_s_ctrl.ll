; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vpx3220.c_vpx3220_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vpx3220.c_vpx3220_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.vpx3220 = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_control*)* @vpx3220_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpx3220_s_ctrl(%struct.v4l2_subdev* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca %struct.vpx3220*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %8 = call %struct.vpx3220* @to_vpx3220(%struct.v4l2_subdev* %7)
  store %struct.vpx3220* %8, %struct.vpx3220** %6, align 8
  %9 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %10 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %93 [
    i32 131, label %12
    i32 130, label %32
    i32 128, label %53
    i32 129, label %73
  ]

12:                                               ; preds = %2
  %13 = load %struct.vpx3220*, %struct.vpx3220** %6, align 8
  %14 = getelementptr inbounds %struct.vpx3220, %struct.vpx3220* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %17 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %15, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %12
  %21 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vpx3220*, %struct.vpx3220** %6, align 8
  %25 = getelementptr inbounds %struct.vpx3220, %struct.vpx3220* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %27 = load %struct.vpx3220*, %struct.vpx3220** %6, align 8
  %28 = getelementptr inbounds %struct.vpx3220, %struct.vpx3220* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @vpx3220_write(%struct.v4l2_subdev* %26, i32 230, i32 %29)
  br label %31

31:                                               ; preds = %20, %12
  br label %96

32:                                               ; preds = %2
  %33 = load %struct.vpx3220*, %struct.vpx3220** %6, align 8
  %34 = getelementptr inbounds %struct.vpx3220, %struct.vpx3220* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %32
  %41 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %42 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.vpx3220*, %struct.vpx3220** %6, align 8
  %45 = getelementptr inbounds %struct.vpx3220, %struct.vpx3220* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %47 = load %struct.vpx3220*, %struct.vpx3220** %6, align 8
  %48 = getelementptr inbounds %struct.vpx3220, %struct.vpx3220* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 192
  %51 = call i32 @vpx3220_write(%struct.v4l2_subdev* %46, i32 231, i32 %50)
  br label %52

52:                                               ; preds = %40, %32
  br label %96

53:                                               ; preds = %2
  %54 = load %struct.vpx3220*, %struct.vpx3220** %6, align 8
  %55 = getelementptr inbounds %struct.vpx3220, %struct.vpx3220* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %58 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %56, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %53
  %62 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %63 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.vpx3220*, %struct.vpx3220** %6, align 8
  %66 = getelementptr inbounds %struct.vpx3220, %struct.vpx3220* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %68 = load %struct.vpx3220*, %struct.vpx3220** %6, align 8
  %69 = getelementptr inbounds %struct.vpx3220, %struct.vpx3220* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @vpx3220_fp_write(%struct.v4l2_subdev* %67, i32 160, i32 %70)
  br label %72

72:                                               ; preds = %61, %53
  br label %96

73:                                               ; preds = %2
  %74 = load %struct.vpx3220*, %struct.vpx3220** %6, align 8
  %75 = getelementptr inbounds %struct.vpx3220, %struct.vpx3220* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %78 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %76, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %73
  %82 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %83 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.vpx3220*, %struct.vpx3220** %6, align 8
  %86 = getelementptr inbounds %struct.vpx3220, %struct.vpx3220* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %88 = load %struct.vpx3220*, %struct.vpx3220** %6, align 8
  %89 = getelementptr inbounds %struct.vpx3220, %struct.vpx3220* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @vpx3220_fp_write(%struct.v4l2_subdev* %87, i32 28, i32 %90)
  br label %92

92:                                               ; preds = %81, %73
  br label %96

93:                                               ; preds = %2
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %97

96:                                               ; preds = %92, %72, %52, %31
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %93
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.vpx3220* @to_vpx3220(%struct.v4l2_subdev*) #1

declare dso_local i32 @vpx3220_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @vpx3220_fp_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
