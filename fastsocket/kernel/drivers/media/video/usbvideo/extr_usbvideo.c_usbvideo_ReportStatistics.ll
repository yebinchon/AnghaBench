; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_usbvideo.c_usbvideo_ReportStatistics.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_usbvideo.c_usbvideo_ReportStatistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvd = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@CAMERA_URB_FRAMES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"Packet Statistics: Total=%lu. Empty=%lu. Usage=%lu%%\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Transfer Statistics: Transferred=%lu%cB Usage=%lu%%\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvd*)* @usbvideo_ReportStatistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbvideo_ReportStatistics(%struct.uvd* %0) #0 {
  %2 = alloca %struct.uvd*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  store %struct.uvd* %0, %struct.uvd** %2, align 8
  %10 = load %struct.uvd*, %struct.uvd** %2, align 8
  %11 = icmp ne %struct.uvd* %10, null
  br i1 %11, label %12, label %127

12:                                               ; preds = %1
  %13 = load %struct.uvd*, %struct.uvd** %2, align 8
  %14 = getelementptr inbounds %struct.uvd, %struct.uvd* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ugt i64 %16, 0
  br i1 %17, label %18, label %127

18:                                               ; preds = %12
  %19 = load %struct.uvd*, %struct.uvd** %2, align 8
  %20 = getelementptr inbounds %struct.uvd, %struct.uvd* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CAMERA_URB_FRAMES, align 8
  %24 = mul i64 %22, %23
  store i64 %24, i64* %3, align 8
  %25 = load %struct.uvd*, %struct.uvd** %2, align 8
  %26 = getelementptr inbounds %struct.uvd, %struct.uvd* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.uvd*, %struct.uvd** %2, align 8
  %30 = getelementptr inbounds %struct.uvd, %struct.uvd* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %28, %32
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* %4, align 8
  %36 = sub i64 %34, %35
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %3, align 8
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i64, i64* %5, align 8
  %42 = icmp ult i64 %41, 184467440737095516
  br i1 %42, label %43, label %48

43:                                               ; preds = %18
  %44 = load i64, i64* %5, align 8
  %45 = mul i64 100, %44
  %46 = load i64, i64* %3, align 8
  %47 = udiv i64 %45, %46
  store i64 %47, i64* %6, align 8
  br label %53

48:                                               ; preds = %18
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* %3, align 8
  %51 = udiv i64 %50, 100
  %52 = udiv i64 %49, %51
  store i64 %52, i64* %6, align 8
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.uvd*, %struct.uvd** %2, align 8
  %55 = getelementptr inbounds %struct.uvd, %struct.uvd* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %3, align 8
  %59 = load i64, i64* %4, align 8
  %60 = trunc i64 %59 to i8
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @dev_info(i32* %57, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %58, i8 signext %60, i64 %61)
  %63 = load %struct.uvd*, %struct.uvd** %2, align 8
  %64 = getelementptr inbounds %struct.uvd, %struct.uvd* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ugt i64 %65, 0
  br i1 %66, label %67, label %126

67:                                               ; preds = %53
  store i8 32, i8* %9, align 1
  %68 = load i64, i64* %3, align 8
  %69 = load %struct.uvd*, %struct.uvd** %2, align 8
  %70 = getelementptr inbounds %struct.uvd, %struct.uvd* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = mul i64 %68, %71
  store i64 %72, i64* %7, align 8
  %73 = load %struct.uvd*, %struct.uvd** %2, align 8
  %74 = getelementptr inbounds %struct.uvd, %struct.uvd* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %8, align 8
  %77 = load i64, i64* %7, align 8
  %78 = icmp ne i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load i64, i64* %8, align 8
  %82 = icmp ult i64 %81, 184467440737095516
  br i1 %82, label %83, label %88

83:                                               ; preds = %67
  %84 = load i64, i64* %8, align 8
  %85 = mul i64 100, %84
  %86 = load i64, i64* %7, align 8
  %87 = udiv i64 %85, %86
  store i64 %87, i64* %6, align 8
  br label %93

88:                                               ; preds = %67
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* %7, align 8
  %91 = udiv i64 %90, 100
  %92 = udiv i64 %89, %91
  store i64 %92, i64* %6, align 8
  br label %93

93:                                               ; preds = %88, %83
  %94 = load i64, i64* %8, align 8
  %95 = icmp ugt i64 %94, 10240
  br i1 %95, label %96, label %117

96:                                               ; preds = %93
  %97 = load i64, i64* %8, align 8
  %98 = udiv i64 %97, 1024
  store i64 %98, i64* %8, align 8
  store i8 75, i8* %9, align 1
  %99 = load i64, i64* %8, align 8
  %100 = icmp ugt i64 %99, 10240
  br i1 %100, label %101, label %116

101:                                              ; preds = %96
  %102 = load i64, i64* %8, align 8
  %103 = udiv i64 %102, 1024
  store i64 %103, i64* %8, align 8
  store i8 77, i8* %9, align 1
  %104 = load i64, i64* %8, align 8
  %105 = icmp ugt i64 %104, 10240
  br i1 %105, label %106, label %115

106:                                              ; preds = %101
  %107 = load i64, i64* %8, align 8
  %108 = udiv i64 %107, 1024
  store i64 %108, i64* %8, align 8
  store i8 71, i8* %9, align 1
  %109 = load i64, i64* %8, align 8
  %110 = icmp ugt i64 %109, 10240
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i64, i64* %8, align 8
  %113 = udiv i64 %112, 1024
  store i64 %113, i64* %8, align 8
  store i8 84, i8* %9, align 1
  br label %114

114:                                              ; preds = %111, %106
  br label %115

115:                                              ; preds = %114, %101
  br label %116

116:                                              ; preds = %115, %96
  br label %117

117:                                              ; preds = %116, %93
  %118 = load %struct.uvd*, %struct.uvd** %2, align 8
  %119 = getelementptr inbounds %struct.uvd, %struct.uvd* %118, i32 0, i32 1
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i64, i64* %8, align 8
  %123 = load i8, i8* %9, align 1
  %124 = load i64, i64* %6, align 8
  %125 = call i32 @dev_info(i32* %121, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %122, i8 signext %123, i64 %124)
  br label %126

126:                                              ; preds = %117, %53
  br label %127

127:                                              ; preds = %126, %12, %1
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i64, i8 signext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
