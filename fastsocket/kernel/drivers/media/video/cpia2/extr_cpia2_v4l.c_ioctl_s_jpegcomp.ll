; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_ioctl_s_jpegcomp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_ioctl_s_jpegcomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.v4l2_jpegcompression = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"S_JPEGCOMP APP_len:%d COM_len:%d\0A\00", align 1
@V4L2_JPEG_MARKER_DHT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Bad APPn Params n=%d len=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Bad COM_len=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.camera_data*)* @ioctl_s_jpegcomp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_s_jpegcomp(i8* %0, %struct.camera_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.camera_data*, align 8
  %6 = alloca %struct.v4l2_jpegcompression*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.camera_data* %1, %struct.camera_data** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.v4l2_jpegcompression*
  store %struct.v4l2_jpegcompression* %8, %struct.v4l2_jpegcompression** %6, align 8
  %9 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %10 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %13 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @DBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14)
  %16 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %17 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @V4L2_JPEG_MARKER_DHT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %25 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 4
  %28 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %29 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %85

32:                                               ; preds = %2
  %33 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %34 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %74

37:                                               ; preds = %32
  %38 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %39 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp ule i64 %41, 4
  br i1 %42, label %43, label %74

43:                                               ; preds = %37
  %44 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %45 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %74

48:                                               ; preds = %43
  %49 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %50 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = icmp sle i32 %51, 15
  br i1 %52, label %53, label %74

53:                                               ; preds = %48
  %54 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %55 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %58 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %60 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %63 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %65 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %68 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %71 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @memcpy(i32 %66, i32 %69, i32 %72)
  br label %84

74:                                               ; preds = %48, %43, %37, %32
  %75 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %76 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %79 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i8*, i32, ...) @LOG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %129

84:                                               ; preds = %53
  br label %88

85:                                               ; preds = %2
  %86 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %87 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %86, i32 0, i32 1
  store i32 0, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %84
  %89 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %90 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %128

93:                                               ; preds = %88
  %94 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %95 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %120

98:                                               ; preds = %93
  %99 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %100 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = icmp ule i64 %102, 4
  br i1 %103, label %104, label %120

104:                                              ; preds = %98
  %105 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %106 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %109 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  %110 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %111 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %114 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %117 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @memcpy(i32 %112, i32 %115, i32 %118)
  br label %127

120:                                              ; preds = %98, %93
  %121 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %122 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i8*, i32, ...) @LOG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %129

127:                                              ; preds = %104
  br label %128

128:                                              ; preds = %127, %88
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %128, %120, %74
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @DBG(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @LOG(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
