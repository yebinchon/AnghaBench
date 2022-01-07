; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_bttv_crop_adjust.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_bttv_crop_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv_crop = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }

@MAX_HDELAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv_crop*, %struct.v4l2_rect*, i32, i32, i32)* @bttv_crop_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bttv_crop_adjust(%struct.bttv_crop* %0, %struct.v4l2_rect* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bttv_crop*, align 8
  %7 = alloca %struct.v4l2_rect*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bttv_crop* %0, %struct.bttv_crop** %6, align 8
  store %struct.v4l2_rect* %1, %struct.v4l2_rect** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @V4L2_FIELD_HAS_BOTH(i32 %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = shl i32 %14, %19
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.bttv_crop*, %struct.bttv_crop** %6, align 8
  %23 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %5
  %27 = load i32, i32* %8, align 4
  %28 = mul nsw i32 %27, 16
  %29 = load %struct.bttv_crop*, %struct.bttv_crop** %6, align 8
  %30 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  br label %69

32:                                               ; preds = %5
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.bttv_crop*, %struct.bttv_crop** %6, align 8
  %35 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %33, %36
  br i1 %37, label %38, label %68

38:                                               ; preds = %32
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.bttv_crop*, %struct.bttv_crop** %6, align 8
  %41 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %45, %48
  %50 = load i32, i32* %8, align 4
  %51 = sub nsw i32 %49, %50
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i64, i64* @MAX_HDELAY, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @min(i32 %52, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load %struct.bttv_crop*, %struct.bttv_crop** %6, align 8
  %57 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %38
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.bttv_crop*, %struct.bttv_crop** %6, align 8
  %65 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 4
  br label %67

67:                                               ; preds = %62, %38
  br label %68

68:                                               ; preds = %67, %32
  br label %69

69:                                               ; preds = %68, %26
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.bttv_crop*, %struct.bttv_crop** %6, align 8
  %72 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load i32, i32* %9, align 4
  %77 = mul nsw i32 %76, 16
  %78 = load %struct.bttv_crop*, %struct.bttv_crop** %6, align 8
  %79 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  store i32 %77, i32* %80, align 4
  br label %119

81:                                               ; preds = %69
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.bttv_crop*, %struct.bttv_crop** %6, align 8
  %84 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = icmp sgt i32 %82, %85
  br i1 %86, label %87, label %118

87:                                               ; preds = %81
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  %90 = and i32 %89, -2
  %91 = load %struct.bttv_crop*, %struct.bttv_crop** %6, align 8
  %92 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  store i32 %90, i32* %93, align 4
  %94 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %95 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %98 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %96, %99
  %101 = load %struct.bttv_crop*, %struct.bttv_crop** %6, align 8
  %102 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %100, %104
  store i32 %105, i32* %13, align 4
  %106 = load %struct.bttv_crop*, %struct.bttv_crop** %6, align 8
  %107 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %87
  %113 = load i32, i32* %13, align 4
  %114 = load %struct.bttv_crop*, %struct.bttv_crop** %6, align 8
  %115 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 3
  store i32 %113, i32* %116, align 4
  br label %117

117:                                              ; preds = %112, %87
  br label %118

118:                                              ; preds = %117, %81
  br label %119

119:                                              ; preds = %118, %75
  %120 = load %struct.bttv_crop*, %struct.bttv_crop** %6, align 8
  %121 = call i32 @bttv_crop_calc_limits(%struct.bttv_crop* %120)
  ret void
}

declare dso_local i32 @V4L2_FIELD_HAS_BOTH(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @bttv_crop_calc_limits(%struct.bttv_crop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
