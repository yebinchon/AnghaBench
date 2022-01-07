; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa7110.c_saa7110_g_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa7110.c_saa7110_g_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.saa7110 = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_control*)* @saa7110_g_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7110_g_ctrl(%struct.v4l2_subdev* %0, %struct.v4l2_control* %1) #0 {
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
  switch i32 %11, label %36 [
    i32 131, label %12
    i32 130, label %18
    i32 128, label %24
    i32 129, label %30
  ]

12:                                               ; preds = %2
  %13 = load %struct.saa7110*, %struct.saa7110** %6, align 8
  %14 = getelementptr inbounds %struct.saa7110, %struct.saa7110* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %17 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  br label %39

18:                                               ; preds = %2
  %19 = load %struct.saa7110*, %struct.saa7110** %6, align 8
  %20 = getelementptr inbounds %struct.saa7110, %struct.saa7110* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  br label %39

24:                                               ; preds = %2
  %25 = load %struct.saa7110*, %struct.saa7110** %6, align 8
  %26 = getelementptr inbounds %struct.saa7110, %struct.saa7110* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %29 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %39

30:                                               ; preds = %2
  %31 = load %struct.saa7110*, %struct.saa7110** %6, align 8
  %32 = getelementptr inbounds %struct.saa7110, %struct.saa7110* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %35 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %39

36:                                               ; preds = %2
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %40

39:                                               ; preds = %30, %24, %18, %12
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.saa7110* @to_saa7110(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
