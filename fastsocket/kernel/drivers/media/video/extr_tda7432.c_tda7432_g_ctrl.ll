; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tda7432.c_tda7432_g_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tda7432.c_tda7432_g_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.tda7432 = type { i32, i32, i32, i32, i32, i32 }

@maxvol = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_control*)* @tda7432_g_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda7432_g_ctrl(%struct.v4l2_subdev* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca %struct.tda7432*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.tda7432* @to_state(%struct.v4l2_subdev* %9)
  store %struct.tda7432* %10, %struct.tda7432** %6, align 8
  %11 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %12 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %115 [
    i32 130, label %14
    i32 128, label %20
    i32 132, label %42
    i32 131, label %67
    i32 129, label %91
  ]

14:                                               ; preds = %2
  %15 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %16 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %19 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  store i32 0, i32* %3, align 4
  br label %118

20:                                               ; preds = %2
  %21 = load i32, i32* @maxvol, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %20
  %24 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %25 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 127
  %28 = sub nsw i32 111, %27
  %29 = mul nsw i32 %28, 630
  %30 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %31 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %41

32:                                               ; preds = %20
  %33 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %34 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 127
  %37 = sub nsw i32 111, %36
  %38 = mul nsw i32 %37, 829
  %39 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %40 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %32, %23
  store i32 0, i32* %3, align 4
  br label %118

42:                                               ; preds = %2
  %43 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %44 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %47 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %42
  %51 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %52 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 1057, %53
  %55 = sub nsw i32 32768, %54
  %56 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %57 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %66

58:                                               ; preds = %42
  %59 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %60 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 1057, %61
  %63 = add nsw i32 32768, %62
  %64 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %65 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %58, %50
  store i32 0, i32* %3, align 4
  br label %118

67:                                               ; preds = %2
  %68 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %69 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp sge i32 %71, 8
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load i32, i32* %7, align 4
  %75 = sub nsw i32 %74, 8
  %76 = xor i32 %75, -1
  %77 = and i32 %76, 15
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %73, %67
  %79 = load i32, i32* %7, align 4
  %80 = shl i32 %79, 12
  %81 = load i32, i32* %7, align 4
  %82 = shl i32 %81, 8
  %83 = add nsw i32 %80, %82
  %84 = load i32, i32* %7, align 4
  %85 = shl i32 %84, 4
  %86 = add nsw i32 %83, %85
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %86, %87
  %89 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %90 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  store i32 0, i32* %3, align 4
  br label %118

91:                                               ; preds = %2
  %92 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %93 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp sge i32 %95, 8
  br i1 %96, label %97, label %102

97:                                               ; preds = %91
  %98 = load i32, i32* %8, align 4
  %99 = sub nsw i32 %98, 8
  %100 = xor i32 %99, -1
  %101 = and i32 %100, 15
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %97, %91
  %103 = load i32, i32* %8, align 4
  %104 = shl i32 %103, 12
  %105 = load i32, i32* %8, align 4
  %106 = shl i32 %105, 8
  %107 = add nsw i32 %104, %106
  %108 = load i32, i32* %8, align 4
  %109 = shl i32 %108, 4
  %110 = add nsw i32 %107, %109
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %110, %111
  %113 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %114 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  store i32 0, i32* %3, align 4
  br label %118

115:                                              ; preds = %2
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %115, %102, %78, %66, %41, %14
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.tda7432* @to_state(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
