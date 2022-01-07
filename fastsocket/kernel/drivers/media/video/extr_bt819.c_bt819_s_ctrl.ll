; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_bt819.c_bt819_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_bt819.c_bt819_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.bt819 = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_control*)* @bt819_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt819_s_ctrl(%struct.v4l2_subdev* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca %struct.bt819*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.bt819* @to_bt819(%struct.v4l2_subdev* %8)
  store %struct.bt819* %9, %struct.bt819** %6, align 8
  %10 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %125 [
    i32 131, label %13
    i32 130, label %33
    i32 128, label %61
    i32 129, label %105
  ]

13:                                               ; preds = %2
  %14 = load %struct.bt819*, %struct.bt819** %6, align 8
  %15 = getelementptr inbounds %struct.bt819, %struct.bt819* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %18 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %128

22:                                               ; preds = %13
  %23 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.bt819*, %struct.bt819** %6, align 8
  %27 = getelementptr inbounds %struct.bt819, %struct.bt819* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.bt819*, %struct.bt819** %6, align 8
  %29 = load %struct.bt819*, %struct.bt819** %6, align 8
  %30 = getelementptr inbounds %struct.bt819, %struct.bt819* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @bt819_write(%struct.bt819* %28, i32 10, i32 %31)
  br label %128

33:                                               ; preds = %2
  %34 = load %struct.bt819*, %struct.bt819** %6, align 8
  %35 = getelementptr inbounds %struct.bt819, %struct.bt819* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %38 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %128

42:                                               ; preds = %33
  %43 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %44 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.bt819*, %struct.bt819** %6, align 8
  %47 = getelementptr inbounds %struct.bt819, %struct.bt819* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.bt819*, %struct.bt819** %6, align 8
  %49 = load %struct.bt819*, %struct.bt819** %6, align 8
  %50 = getelementptr inbounds %struct.bt819, %struct.bt819* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 255
  %53 = call i32 @bt819_write(%struct.bt819* %48, i32 12, i32 %52)
  %54 = load %struct.bt819*, %struct.bt819** %6, align 8
  %55 = load %struct.bt819*, %struct.bt819** %6, align 8
  %56 = getelementptr inbounds %struct.bt819, %struct.bt819* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 8
  %59 = and i32 %58, 1
  %60 = call i32 @bt819_setbit(%struct.bt819* %54, i32 11, i32 2, i32 %59)
  br label %128

61:                                               ; preds = %2
  %62 = load %struct.bt819*, %struct.bt819** %6, align 8
  %63 = getelementptr inbounds %struct.bt819, %struct.bt819* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %66 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %64, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %128

70:                                               ; preds = %61
  %71 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %72 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.bt819*, %struct.bt819** %6, align 8
  %75 = getelementptr inbounds %struct.bt819, %struct.bt819* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load %struct.bt819*, %struct.bt819** %6, align 8
  %77 = load %struct.bt819*, %struct.bt819** %6, align 8
  %78 = getelementptr inbounds %struct.bt819, %struct.bt819* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 7
  %81 = and i32 %80, 255
  %82 = call i32 @bt819_write(%struct.bt819* %76, i32 13, i32 %81)
  %83 = load %struct.bt819*, %struct.bt819** %6, align 8
  %84 = load %struct.bt819*, %struct.bt819** %6, align 8
  %85 = getelementptr inbounds %struct.bt819, %struct.bt819* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = ashr i32 %86, 15
  %88 = and i32 %87, 1
  %89 = call i32 @bt819_setbit(%struct.bt819* %83, i32 11, i32 1, i32 %88)
  %90 = load %struct.bt819*, %struct.bt819** %6, align 8
  %91 = getelementptr inbounds %struct.bt819, %struct.bt819* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %92, 180
  %94 = sdiv i32 %93, 254
  store i32 %94, i32* %7, align 4
  %95 = load %struct.bt819*, %struct.bt819** %6, align 8
  %96 = load i32, i32* %7, align 4
  %97 = ashr i32 %96, 7
  %98 = and i32 %97, 255
  %99 = call i32 @bt819_write(%struct.bt819* %95, i32 14, i32 %98)
  %100 = load %struct.bt819*, %struct.bt819** %6, align 8
  %101 = load i32, i32* %7, align 4
  %102 = ashr i32 %101, 15
  %103 = and i32 %102, 1
  %104 = call i32 @bt819_setbit(%struct.bt819* %100, i32 11, i32 0, i32 %103)
  br label %128

105:                                              ; preds = %2
  %106 = load %struct.bt819*, %struct.bt819** %6, align 8
  %107 = getelementptr inbounds %struct.bt819, %struct.bt819* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %110 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %108, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %128

114:                                              ; preds = %105
  %115 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %116 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.bt819*, %struct.bt819** %6, align 8
  %119 = getelementptr inbounds %struct.bt819, %struct.bt819* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 4
  %120 = load %struct.bt819*, %struct.bt819** %6, align 8
  %121 = load %struct.bt819*, %struct.bt819** %6, align 8
  %122 = getelementptr inbounds %struct.bt819, %struct.bt819* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @bt819_write(%struct.bt819* %120, i32 15, i32 %123)
  br label %128

125:                                              ; preds = %2
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %3, align 4
  br label %129

128:                                              ; preds = %114, %113, %70, %69, %42, %41, %22, %21
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %128, %125
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local %struct.bt819* @to_bt819(%struct.v4l2_subdev*) #1

declare dso_local i32 @bt819_write(%struct.bt819*, i32, i32) #1

declare dso_local i32 @bt819_setbit(%struct.bt819*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
