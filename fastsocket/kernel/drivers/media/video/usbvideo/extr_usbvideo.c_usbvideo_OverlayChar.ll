; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_usbvideo.c_usbvideo_OverlayChar.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_usbvideo.c_usbvideo_OverlayChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvd = type { i64 }
%struct.usbvideo_frame = type { i32 }

@usbvideo_OverlayChar.digits = internal constant [16 x i16] [i16 -2338, i16 9362, i16 -6194, i16 -6242, i16 -18542, i16 -3170, i16 -3106, i16 -2926, i16 -2082, i16 -2146, i16 30682, i16 -10404, i16 -3506, i16 -10532, i16 -3250, i16 -3256], align 16
@VIDEO_PALETTE_RGB24 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvd*, %struct.usbvideo_frame*, i32, i32, i32)* @usbvideo_OverlayChar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbvideo_OverlayChar(%struct.uvd* %0, %struct.usbvideo_frame* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.uvd*, align 8
  %7 = alloca %struct.usbvideo_frame*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.uvd* %0, %struct.uvd** %6, align 8
  store %struct.usbvideo_frame* %1, %struct.usbvideo_frame** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.uvd*, %struct.uvd** %6, align 8
  %15 = icmp eq %struct.uvd* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %5
  %17 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %7, align 8
  %18 = icmp eq %struct.usbvideo_frame* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %5
  br label %99

20:                                               ; preds = %16
  %21 = load i32, i32* %10, align 4
  %22 = icmp sge i32 %21, 48
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32, i32* %10, align 4
  %25 = icmp sle i32 %24, 57
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* %10, align 4
  %28 = sub nsw i32 %27, 48
  store i32 %28, i32* %10, align 4
  br label %52

29:                                               ; preds = %23, %20
  %30 = load i32, i32* %10, align 4
  %31 = icmp sge i32 %30, 65
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i32, i32* %10, align 4
  %34 = icmp sle i32 %33, 70
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* %10, align 4
  %37 = sub nsw i32 %36, 65
  %38 = add nsw i32 10, %37
  store i32 %38, i32* %10, align 4
  br label %51

39:                                               ; preds = %32, %29
  %40 = load i32, i32* %10, align 4
  %41 = icmp sge i32 %40, 97
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i32, i32* %10, align 4
  %44 = icmp sle i32 %43, 102
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* %10, align 4
  %47 = sub nsw i32 %46, 97
  %48 = add nsw i32 10, %47
  store i32 %48, i32* %10, align 4
  br label %50

49:                                               ; preds = %42, %39
  br label %99

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50, %35
  br label %52

52:                                               ; preds = %51, %26
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [16 x i16], [16 x i16]* @usbvideo_OverlayChar.digits, i64 0, i64 %54
  %56 = load i16, i16* %55, align 2
  store i16 %56, i16* %11, align 2
  store i32 0, i32* %13, align 4
  br label %57

57:                                               ; preds = %96, %52
  %58 = load i32, i32* %13, align 4
  %59 = icmp slt i32 %58, 5
  br i1 %59, label %60, label %99

60:                                               ; preds = %57
  store i32 0, i32* %12, align 4
  br label %61

61:                                               ; preds = %92, %60
  %62 = load i32, i32* %12, align 4
  %63 = icmp slt i32 %62, 3
  br i1 %63, label %64, label %95

64:                                               ; preds = %61
  %65 = load i16, i16* %11, align 2
  %66 = zext i16 %65 to i32
  %67 = and i32 %66, 32768
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %87

69:                                               ; preds = %64
  %70 = load %struct.uvd*, %struct.uvd** %6, align 8
  %71 = getelementptr inbounds %struct.uvd, %struct.uvd* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @VIDEO_PALETTE_RGB24, align 8
  %74 = shl i64 1, %73
  %75 = and i64 %72, %74
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %69
  %78 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %79, %80
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %82, %83
  %85 = call i32 @RGB24_PUTPIXEL(%struct.usbvideo_frame* %78, i32 %81, i32 %84, i32 255, i32 255, i32 255)
  br label %86

86:                                               ; preds = %77, %69
  br label %87

87:                                               ; preds = %86, %64
  %88 = load i16, i16* %11, align 2
  %89 = zext i16 %88 to i32
  %90 = shl i32 %89, 1
  %91 = trunc i32 %90 to i16
  store i16 %91, i16* %11, align 2
  br label %92

92:                                               ; preds = %87
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %61

95:                                               ; preds = %61
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %13, align 4
  br label %57

99:                                               ; preds = %19, %49, %57
  ret void
}

declare dso_local i32 @RGB24_PUTPIXEL(%struct.usbvideo_frame*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
