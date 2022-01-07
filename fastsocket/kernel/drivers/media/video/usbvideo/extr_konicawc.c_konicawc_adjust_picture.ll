; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_konicawc.c_konicawc_adjust_picture.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_konicawc.c_konicawc_adjust_picture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvd = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.konicawc = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"new brightness: %d\00", align 1
@MAX_BRIGHTNESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"setting brightness to %d (%d)\00", align 1
@SetBrightness = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"new contrast: %d\00", align 1
@MAX_CONTRAST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"setting contrast to %d (%d)\00", align 1
@SetContrast = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvd*)* @konicawc_adjust_picture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @konicawc_adjust_picture(%struct.uvd* %0) #0 {
  %2 = alloca %struct.uvd*, align 8
  %3 = alloca %struct.konicawc*, align 8
  store %struct.uvd* %0, %struct.uvd** %2, align 8
  %4 = load %struct.uvd*, %struct.uvd** %2, align 8
  %5 = getelementptr inbounds %struct.uvd, %struct.uvd* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.konicawc*
  store %struct.konicawc* %7, %struct.konicawc** %3, align 8
  %8 = load %struct.uvd*, %struct.uvd** %2, align 8
  %9 = call i32 @konicawc_camera_off(%struct.uvd* %8)
  %10 = load %struct.uvd*, %struct.uvd** %2, align 8
  %11 = getelementptr inbounds %struct.uvd, %struct.uvd* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 (i32, i8*, i32, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.uvd*, %struct.uvd** %2, align 8
  %16 = getelementptr inbounds %struct.uvd, %struct.uvd* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @MAX_BRIGHTNESS, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @MAX_BRIGHTNESS, align 4
  br label %28

23:                                               ; preds = %1
  %24 = load %struct.uvd*, %struct.uvd** %2, align 8
  %25 = getelementptr inbounds %struct.uvd, %struct.uvd* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  br label %28

28:                                               ; preds = %23, %21
  %29 = phi i32 [ %22, %21 ], [ %27, %23 ]
  %30 = load %struct.uvd*, %struct.uvd** %2, align 8
  %31 = getelementptr inbounds %struct.uvd, %struct.uvd* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %34 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.uvd*, %struct.uvd** %2, align 8
  %37 = getelementptr inbounds %struct.uvd, %struct.uvd* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sdiv i32 %39, 11
  %41 = icmp ne i32 %35, %40
  br i1 %41, label %42, label %64

42:                                               ; preds = %28
  %43 = load %struct.uvd*, %struct.uvd** %2, align 8
  %44 = getelementptr inbounds %struct.uvd, %struct.uvd* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sdiv i32 %46, 11
  %48 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %49 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %51 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %54 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %55, 11
  %57 = call i32 (i32, i8*, i32, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %56)
  %58 = load %struct.uvd*, %struct.uvd** %2, align 8
  %59 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %60 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SetBrightness, align 4
  %63 = call i32 @konicawc_set_value(%struct.uvd* %58, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %42, %28
  %65 = load %struct.uvd*, %struct.uvd** %2, align 8
  %66 = getelementptr inbounds %struct.uvd, %struct.uvd* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32, i8*, i32, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load %struct.uvd*, %struct.uvd** %2, align 8
  %71 = getelementptr inbounds %struct.uvd, %struct.uvd* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @MAX_CONTRAST, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %64
  %77 = load i32, i32* @MAX_CONTRAST, align 4
  br label %83

78:                                               ; preds = %64
  %79 = load %struct.uvd*, %struct.uvd** %2, align 8
  %80 = getelementptr inbounds %struct.uvd, %struct.uvd* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  br label %83

83:                                               ; preds = %78, %76
  %84 = phi i32 [ %77, %76 ], [ %82, %78 ]
  %85 = load %struct.uvd*, %struct.uvd** %2, align 8
  %86 = getelementptr inbounds %struct.uvd, %struct.uvd* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 4
  %88 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %89 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.uvd*, %struct.uvd** %2, align 8
  %92 = getelementptr inbounds %struct.uvd, %struct.uvd* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sdiv i32 %94, 11
  %96 = icmp ne i32 %90, %95
  br i1 %96, label %97, label %119

97:                                               ; preds = %83
  %98 = load %struct.uvd*, %struct.uvd** %2, align 8
  %99 = getelementptr inbounds %struct.uvd, %struct.uvd* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sdiv i32 %101, 11
  %103 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %104 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %106 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %109 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %110, 11
  %112 = call i32 (i32, i8*, i32, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %107, i32 %111)
  %113 = load %struct.uvd*, %struct.uvd** %2, align 8
  %114 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %115 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @SetContrast, align 4
  %118 = call i32 @konicawc_set_value(%struct.uvd* %113, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %97, %83
  %120 = load %struct.uvd*, %struct.uvd** %2, align 8
  %121 = call i32 @konicawc_camera_on(%struct.uvd* %120)
  ret void
}

declare dso_local i32 @konicawc_camera_off(%struct.uvd*) #1

declare dso_local i32 @DEBUG(i32, i8*, i32, ...) #1

declare dso_local i32 @konicawc_set_value(%struct.uvd*, i32, i32) #1

declare dso_local i32 @konicawc_camera_on(%struct.uvd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
