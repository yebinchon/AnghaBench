; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvaudio.c_tvaudio_g_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvaudio.c_tvaudio_g_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.CHIPSTATE = type { i32, i32, i32, i32, i32, %struct.CHIPDESC* }
%struct.CHIPDESC = type { i32 }

@CHIP_HAS_INPUTSEL = common dso_local global i32 0, align 4
@CHIP_HAS_VOLUME = common dso_local global i32 0, align 4
@CHIP_HAS_BASSTREBLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_control*)* @tvaudio_g_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvaudio_g_ctrl(%struct.v4l2_subdev* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca %struct.CHIPSTATE*, align 8
  %7 = alloca %struct.CHIPDESC*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.CHIPSTATE* @to_state(%struct.v4l2_subdev* %9)
  store %struct.CHIPSTATE* %10, %struct.CHIPSTATE** %6, align 8
  %11 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %12 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %11, i32 0, i32 5
  %13 = load %struct.CHIPDESC*, %struct.CHIPDESC** %12, align 8
  store %struct.CHIPDESC* %13, %struct.CHIPDESC** %7, align 8
  %14 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %114 [
    i32 130, label %17
    i32 128, label %31
    i32 132, label %50
    i32 131, label %86
    i32 129, label %100
  ]

17:                                               ; preds = %2
  %18 = load %struct.CHIPDESC*, %struct.CHIPDESC** %7, align 8
  %19 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CHIP_HAS_INPUTSEL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %114

25:                                               ; preds = %17
  %26 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %27 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %30 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  store i32 0, i32* %3, align 4
  br label %117

31:                                               ; preds = %2
  %32 = load %struct.CHIPDESC*, %struct.CHIPDESC** %7, align 8
  %33 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CHIP_HAS_VOLUME, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  br label %114

39:                                               ; preds = %31
  %40 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %41 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %44 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @max(i32 %42, i32 %45)
  %47 = ptrtoint i8* %46 to i32
  %48 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %49 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  store i32 0, i32* %3, align 4
  br label %117

50:                                               ; preds = %2
  %51 = load %struct.CHIPDESC*, %struct.CHIPDESC** %7, align 8
  %52 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @CHIP_HAS_VOLUME, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %50
  br label %114

58:                                               ; preds = %50
  %59 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %60 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %63 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @max(i32 %61, i32 %64)
  %66 = ptrtoint i8* %65 to i32
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %58
  %70 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %71 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %74 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @min(i32 %72, i32 %75)
  %77 = mul nsw i32 32768, %76
  %78 = load i32, i32* %8, align 4
  %79 = sdiv i32 %77, %78
  %80 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %81 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  br label %85

82:                                               ; preds = %58
  %83 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %84 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %83, i32 0, i32 1
  store i32 32768, i32* %84, align 4
  br label %85

85:                                               ; preds = %82, %69
  store i32 0, i32* %3, align 4
  br label %117

86:                                               ; preds = %2
  %87 = load %struct.CHIPDESC*, %struct.CHIPDESC** %7, align 8
  %88 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @CHIP_HAS_BASSTREBLE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %86
  br label %114

94:                                               ; preds = %86
  %95 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %96 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %99 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  store i32 0, i32* %3, align 4
  br label %117

100:                                              ; preds = %2
  %101 = load %struct.CHIPDESC*, %struct.CHIPDESC** %7, align 8
  %102 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @CHIP_HAS_BASSTREBLE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %100
  br label %114

108:                                              ; preds = %100
  %109 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %110 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %113 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  store i32 0, i32* %3, align 4
  br label %117

114:                                              ; preds = %2, %107, %93, %57, %38, %24
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %114, %108, %94, %85, %39, %25
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local %struct.CHIPSTATE* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i8* @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
