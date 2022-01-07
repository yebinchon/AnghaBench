; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tda9875.c_tda9875_g_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tda9875.c_tda9875_g_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.tda9875 = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_control*)* @tda9875_g_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda9875_g_ctrl(%struct.v4l2_subdev* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca %struct.tda9875*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %14 = call %struct.tda9875* @to_state(%struct.v4l2_subdev* %13)
  store %struct.tda9875* %14, %struct.tda9875** %6, align 8
  %15 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %16 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %90 [
    i32 128, label %18
    i32 131, label %35
    i32 130, label %74
    i32 129, label %82
  ]

18:                                               ; preds = %2
  %19 = load %struct.tda9875*, %struct.tda9875** %6, align 8
  %20 = getelementptr inbounds %struct.tda9875, %struct.tda9875* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 84
  %23 = mul nsw i32 %22, 606
  store i32 %23, i32* %7, align 4
  %24 = load %struct.tda9875*, %struct.tda9875** %6, align 8
  %25 = getelementptr inbounds %struct.tda9875, %struct.tda9875* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 84
  %28 = mul nsw i32 %27, 606
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i8* @max(i32 %29, i32 %30)
  %32 = ptrtoint i8* %31 to i32
  %33 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %34 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  store i32 0, i32* %3, align 4
  br label %93

35:                                               ; preds = %2
  %36 = load %struct.tda9875*, %struct.tda9875** %6, align 8
  %37 = getelementptr inbounds %struct.tda9875, %struct.tda9875* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 84
  %40 = mul nsw i32 %39, 606
  store i32 %40, i32* %9, align 4
  %41 = load %struct.tda9875*, %struct.tda9875** %6, align 8
  %42 = getelementptr inbounds %struct.tda9875, %struct.tda9875* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 84
  %45 = mul nsw i32 %44, 606
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i8* @max(i32 %46, i32 %47)
  %49 = ptrtoint i8* %48 to i32
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @min(i32 %50, i32 %51)
  %53 = mul nsw i32 32768, %52
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %35
  %57 = load i32, i32* %11, align 4
  br label %59

58:                                               ; preds = %35
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i32 [ %57, %56 ], [ 1, %58 ]
  %61 = sdiv i32 %53, %60
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* %12, align 4
  %67 = sub nsw i32 65535, %66
  br label %70

68:                                               ; preds = %59
  %69 = load i32, i32* %12, align 4
  br label %70

70:                                               ; preds = %68, %65
  %71 = phi i32 [ %67, %65 ], [ %69, %68 ]
  %72 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %73 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  store i32 0, i32* %3, align 4
  br label %93

74:                                               ; preds = %2
  %75 = load %struct.tda9875*, %struct.tda9875** %6, align 8
  %76 = getelementptr inbounds %struct.tda9875, %struct.tda9875* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 12
  %79 = mul nsw i32 %78, 2427
  %80 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %81 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  store i32 0, i32* %3, align 4
  br label %93

82:                                               ; preds = %2
  %83 = load %struct.tda9875*, %struct.tda9875** %6, align 8
  %84 = getelementptr inbounds %struct.tda9875, %struct.tda9875* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 12
  %87 = mul nsw i32 %86, 2730
  %88 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %89 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  store i32 0, i32* %3, align 4
  br label %93

90:                                               ; preds = %2
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %90, %82, %74, %70, %18
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.tda9875* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i8* @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
