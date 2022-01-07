; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvaudio.c_tvaudio_queryctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvaudio.c_tvaudio_queryctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_queryctrl = type { i32 }
%struct.CHIPSTATE = type { %struct.CHIPDESC* }
%struct.CHIPDESC = type { i32 }

@CHIP_HAS_INPUTSEL = common dso_local global i32 0, align 4
@CHIP_HAS_VOLUME = common dso_local global i32 0, align 4
@CHIP_HAS_BASSTREBLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_queryctrl*)* @tvaudio_queryctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvaudio_queryctrl(%struct.v4l2_subdev* %0, %struct.v4l2_queryctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_queryctrl*, align 8
  %6 = alloca %struct.CHIPSTATE*, align 8
  %7 = alloca %struct.CHIPDESC*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_queryctrl* %1, %struct.v4l2_queryctrl** %5, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.CHIPSTATE* @to_state(%struct.v4l2_subdev* %8)
  store %struct.CHIPSTATE* %9, %struct.CHIPSTATE** %6, align 8
  %10 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %11 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %10, i32 0, i32 0
  %12 = load %struct.CHIPDESC*, %struct.CHIPDESC** %11, align 8
  store %struct.CHIPDESC* %12, %struct.CHIPDESC** %7, align 8
  %13 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %60 [
    i32 130, label %16
    i32 128, label %27
    i32 132, label %38
    i32 131, label %49
    i32 129, label %49
  ]

16:                                               ; preds = %2
  %17 = load %struct.CHIPDESC*, %struct.CHIPDESC** %7, align 8
  %18 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CHIP_HAS_INPUTSEL, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %25 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %24, i32 0, i32 1, i32 1, i32 0)
  store i32 %25, i32* %3, align 4
  br label %64

26:                                               ; preds = %16
  br label %61

27:                                               ; preds = %2
  %28 = load %struct.CHIPDESC*, %struct.CHIPDESC** %7, align 8
  %29 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CHIP_HAS_VOLUME, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %36 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %35, i32 0, i32 65535, i32 655, i32 58880)
  store i32 %36, i32* %3, align 4
  br label %64

37:                                               ; preds = %27
  br label %61

38:                                               ; preds = %2
  %39 = load %struct.CHIPDESC*, %struct.CHIPDESC** %7, align 8
  %40 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CHIP_HAS_VOLUME, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %47 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %46, i32 0, i32 65535, i32 655, i32 32768)
  store i32 %47, i32* %3, align 4
  br label %64

48:                                               ; preds = %38
  br label %61

49:                                               ; preds = %2, %2
  %50 = load %struct.CHIPDESC*, %struct.CHIPDESC** %7, align 8
  %51 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @CHIP_HAS_BASSTREBLE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %58 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %57, i32 0, i32 65535, i32 655, i32 32768)
  store i32 %58, i32* %3, align 4
  br label %64

59:                                               ; preds = %49
  br label %61

60:                                               ; preds = %2
  br label %61

61:                                               ; preds = %60, %59, %48, %37, %26
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %61, %56, %45, %34, %23
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.CHIPSTATE* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
