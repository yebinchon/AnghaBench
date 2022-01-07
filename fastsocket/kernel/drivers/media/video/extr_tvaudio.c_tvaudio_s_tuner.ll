; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvaudio.c_tvaudio_s_tuner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvaudio.c_tvaudio_s_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_tuner = type { i32 }
%struct.CHIPSTATE = type { i32, i32, i64, i64, %struct.CHIPDESC* }
%struct.CHIPDESC = type { i32 (%struct.CHIPSTATE*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_tuner*)* @tvaudio_s_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvaudio_s_tuner(%struct.v4l2_subdev* %0, %struct.v4l2_tuner* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_tuner*, align 8
  %6 = alloca %struct.CHIPSTATE*, align 8
  %7 = alloca %struct.CHIPDESC*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_tuner* %1, %struct.v4l2_tuner** %5, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.CHIPSTATE* @to_state(%struct.v4l2_subdev* %9)
  store %struct.CHIPSTATE* %10, %struct.CHIPSTATE** %6, align 8
  %11 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %12 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %11, i32 0, i32 4
  %13 = load %struct.CHIPDESC*, %struct.CHIPDESC** %12, align 8
  store %struct.CHIPDESC* %13, %struct.CHIPDESC** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.CHIPDESC*, %struct.CHIPDESC** %7, align 8
  %15 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %14, i32 0, i32 0
  %16 = load i32 (%struct.CHIPSTATE*, i32)*, i32 (%struct.CHIPSTATE*, i32)** %15, align 8
  %17 = icmp ne i32 (%struct.CHIPSTATE*, i32)* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %58

19:                                               ; preds = %2
  %20 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %21 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %58

25:                                               ; preds = %19
  %26 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %34 [
    i32 129, label %29
    i32 128, label %29
    i32 132, label %29
    i32 130, label %29
    i32 131, label %33
  ]

29:                                               ; preds = %25, %25, %25, %25
  %30 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %31 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  br label %37

33:                                               ; preds = %25
  store i32 128, i32* %8, align 4
  br label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %58

37:                                               ; preds = %33, %29
  %38 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %39 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %42 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %37
  %46 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %47 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %50 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.CHIPDESC*, %struct.CHIPDESC** %7, align 8
  %52 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %51, i32 0, i32 0
  %53 = load i32 (%struct.CHIPSTATE*, i32)*, i32 (%struct.CHIPSTATE*, i32)** %52, align 8
  %54 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 %53(%struct.CHIPSTATE* %54, i32 %55)
  br label %57

57:                                               ; preds = %45, %37
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %34, %24, %18
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.CHIPSTATE* @to_state(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
