; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov51x_postprocess_yuv420.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov51x_postprocess_yuv420.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i64 }
%struct.ov511_frame = type { i32, i32, i32, i64, i32 }

@SEN_SAA7111A = common dso_local global i64 0, align 8
@RAWFMT_YUV420 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ov511*, %struct.ov511_frame*)* @ov51x_postprocess_yuv420 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov51x_postprocess_yuv420(%struct.usb_ov511* %0, %struct.ov511_frame* %1) #0 {
  %3 = alloca %struct.usb_ov511*, align 8
  %4 = alloca %struct.ov511_frame*, align 8
  store %struct.usb_ov511* %0, %struct.usb_ov511** %3, align 8
  store %struct.ov511_frame* %1, %struct.ov511_frame** %4, align 8
  %5 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %6 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SEN_SAA7111A, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %49

10:                                               ; preds = %2
  %11 = load %struct.ov511_frame*, %struct.ov511_frame** %4, align 8
  %12 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sge i32 %13, 480
  br i1 %14, label %15, label %49

15:                                               ; preds = %10
  %16 = load %struct.ov511_frame*, %struct.ov511_frame** %4, align 8
  %17 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %22 = load %struct.ov511_frame*, %struct.ov511_frame** %4, align 8
  %23 = load %struct.ov511_frame*, %struct.ov511_frame** %4, align 8
  %24 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ov511_frame*, %struct.ov511_frame** %4, align 8
  %27 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @decompress(%struct.usb_ov511* %21, %struct.ov511_frame* %22, i32 %25, i32 %28)
  br label %39

30:                                               ; preds = %15
  %31 = load %struct.ov511_frame*, %struct.ov511_frame** %4, align 8
  %32 = load %struct.ov511_frame*, %struct.ov511_frame** %4, align 8
  %33 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ov511_frame*, %struct.ov511_frame** %4, align 8
  %36 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @yuv420raw_to_yuv420p(%struct.ov511_frame* %31, i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %30, %20
  %40 = load %struct.ov511_frame*, %struct.ov511_frame** %4, align 8
  %41 = load i32, i32* @RAWFMT_YUV420, align 4
  %42 = load %struct.ov511_frame*, %struct.ov511_frame** %4, align 8
  %43 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ov511_frame*, %struct.ov511_frame** %4, align 8
  %46 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @deinterlace(%struct.ov511_frame* %40, i32 %41, i32 %44, i32 %47)
  br label %74

49:                                               ; preds = %10, %2
  %50 = load %struct.ov511_frame*, %struct.ov511_frame** %4, align 8
  %51 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %56 = load %struct.ov511_frame*, %struct.ov511_frame** %4, align 8
  %57 = load %struct.ov511_frame*, %struct.ov511_frame** %4, align 8
  %58 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.ov511_frame*, %struct.ov511_frame** %4, align 8
  %61 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @decompress(%struct.usb_ov511* %55, %struct.ov511_frame* %56, i32 %59, i32 %62)
  br label %73

64:                                               ; preds = %49
  %65 = load %struct.ov511_frame*, %struct.ov511_frame** %4, align 8
  %66 = load %struct.ov511_frame*, %struct.ov511_frame** %4, align 8
  %67 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.ov511_frame*, %struct.ov511_frame** %4, align 8
  %70 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @yuv420raw_to_yuv420p(%struct.ov511_frame* %65, i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %64, %54
  br label %74

74:                                               ; preds = %73, %39
  ret void
}

declare dso_local i32 @decompress(%struct.usb_ov511*, %struct.ov511_frame*, i32, i32) #1

declare dso_local i32 @yuv420raw_to_yuv420p(%struct.ov511_frame*, i32, i32) #1

declare dso_local i32 @deinterlace(%struct.ov511_frame*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
