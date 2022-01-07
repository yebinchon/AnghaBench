; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa7110.c_saa7110_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa7110.c_saa7110_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.saa7110 = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_control*)* @saa7110_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7110_s_ctrl(%struct.v4l2_subdev* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca %struct.saa7110*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %8 = call %struct.saa7110* @to_saa7110(%struct.v4l2_subdev* %7)
  store %struct.saa7110* %8, %struct.saa7110** %6, align 8
  %9 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %10 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %92 [
    i32 131, label %12
    i32 130, label %32
    i32 128, label %52
    i32 129, label %72
  ]

12:                                               ; preds = %2
  %13 = load %struct.saa7110*, %struct.saa7110** %6, align 8
  %14 = getelementptr inbounds %struct.saa7110, %struct.saa7110* %13, i32 0, i32 3
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
  %24 = load %struct.saa7110*, %struct.saa7110** %6, align 8
  %25 = getelementptr inbounds %struct.saa7110, %struct.saa7110* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %27 = load %struct.saa7110*, %struct.saa7110** %6, align 8
  %28 = getelementptr inbounds %struct.saa7110, %struct.saa7110* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @saa7110_write(%struct.v4l2_subdev* %26, i32 25, i32 %29)
  br label %31

31:                                               ; preds = %20, %12
  br label %95

32:                                               ; preds = %2
  %33 = load %struct.saa7110*, %struct.saa7110** %6, align 8
  %34 = getelementptr inbounds %struct.saa7110, %struct.saa7110* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %32
  %41 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %42 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.saa7110*, %struct.saa7110** %6, align 8
  %45 = getelementptr inbounds %struct.saa7110, %struct.saa7110* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %47 = load %struct.saa7110*, %struct.saa7110** %6, align 8
  %48 = getelementptr inbounds %struct.saa7110, %struct.saa7110* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @saa7110_write(%struct.v4l2_subdev* %46, i32 19, i32 %49)
  br label %51

51:                                               ; preds = %40, %32
  br label %95

52:                                               ; preds = %2
  %53 = load %struct.saa7110*, %struct.saa7110** %6, align 8
  %54 = getelementptr inbounds %struct.saa7110, %struct.saa7110* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %57 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %55, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %52
  %61 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %62 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.saa7110*, %struct.saa7110** %6, align 8
  %65 = getelementptr inbounds %struct.saa7110, %struct.saa7110* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %67 = load %struct.saa7110*, %struct.saa7110** %6, align 8
  %68 = getelementptr inbounds %struct.saa7110, %struct.saa7110* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @saa7110_write(%struct.v4l2_subdev* %66, i32 18, i32 %69)
  br label %71

71:                                               ; preds = %60, %52
  br label %95

72:                                               ; preds = %2
  %73 = load %struct.saa7110*, %struct.saa7110** %6, align 8
  %74 = getelementptr inbounds %struct.saa7110, %struct.saa7110* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %77 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %75, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %72
  %81 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %82 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.saa7110*, %struct.saa7110** %6, align 8
  %85 = getelementptr inbounds %struct.saa7110, %struct.saa7110* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %87 = load %struct.saa7110*, %struct.saa7110** %6, align 8
  %88 = getelementptr inbounds %struct.saa7110, %struct.saa7110* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @saa7110_write(%struct.v4l2_subdev* %86, i32 7, i32 %89)
  br label %91

91:                                               ; preds = %80, %72
  br label %95

92:                                               ; preds = %2
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %96

95:                                               ; preds = %91, %71, %51, %31
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %92
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.saa7110* @to_saa7110(%struct.v4l2_subdev*) #1

declare dso_local i32 @saa7110_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
