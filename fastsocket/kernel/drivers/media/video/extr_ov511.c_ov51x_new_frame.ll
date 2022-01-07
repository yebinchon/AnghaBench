; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov51x_new_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov51x_new_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i32, i64, i64, %struct.ov511_frame*, i32 }
%struct.ov511_frame = type { i64, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [33 x i8] c"ov->curframe = %d, framenum = %d\00", align 1
@OV511_NUMFRAMES = common dso_local global i32 0, align 4
@FRAME_READY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"framenum = %d, width = %d, height = %d\00", align 1
@FRAME_GRABBING = common dso_local global i64 0, align 8
@STATE_SCANNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ov511*, i32)* @ov51x_new_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov51x_new_frame(%struct.usb_ov511* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_ov511*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ov511_frame*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_ov511* %0, %struct.usb_ov511** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %9 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = call i32 (i32, i8*, i32, i64, ...) @PDEBUG(i32 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %10, i64 %12)
  %14 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %15 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %107

19:                                               ; preds = %2
  %20 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %21 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %44

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 %25, 1
  %27 = load i32, i32* @OV511_NUMFRAMES, align 4
  %28 = add nsw i32 %26, %27
  %29 = load i32, i32* @OV511_NUMFRAMES, align 4
  %30 = srem i32 %28, %29
  store i32 %30, i32* %7, align 4
  %31 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %32 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %31, i32 0, i32 3
  %33 = load %struct.ov511_frame*, %struct.ov511_frame** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %33, i64 %35
  %37 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @FRAME_READY, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %24
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %41, %24
  br label %45

44:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %107

45:                                               ; preds = %43
  %46 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %47 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %46, i32 0, i32 3
  %48 = load %struct.ov511_frame*, %struct.ov511_frame** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %48, i64 %50
  store %struct.ov511_frame* %51, %struct.ov511_frame** %6, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.ov511_frame*, %struct.ov511_frame** %6, align 8
  %54 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.ov511_frame*, %struct.ov511_frame** %6, align 8
  %57 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = call i32 (i32, i8*, i32, i64, ...) @PDEBUG(i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %52, i64 %55, i64 %58)
  %60 = load i64, i64* @FRAME_GRABBING, align 8
  %61 = load %struct.ov511_frame*, %struct.ov511_frame** %6, align 8
  %62 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load i32, i32* @STATE_SCANNING, align 4
  %64 = load %struct.ov511_frame*, %struct.ov511_frame** %6, align 8
  %65 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load %struct.ov511_frame*, %struct.ov511_frame** %6, align 8
  %67 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %70 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.ov511_frame*, %struct.ov511_frame** %6, align 8
  %72 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %75 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %73, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %45
  %79 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %80 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.ov511_frame*, %struct.ov511_frame** %6, align 8
  %83 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %78, %45
  %85 = load %struct.ov511_frame*, %struct.ov511_frame** %6, align 8
  %86 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = and i64 %87, -8
  store i64 %88, i64* %86, align 8
  %89 = load %struct.ov511_frame*, %struct.ov511_frame** %6, align 8
  %90 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %93 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp sgt i64 %91, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %84
  %97 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %98 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.ov511_frame*, %struct.ov511_frame** %6, align 8
  %101 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %96, %84
  %103 = load %struct.ov511_frame*, %struct.ov511_frame** %6, align 8
  %104 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = and i64 %105, -4
  store i64 %106, i64* %104, align 8
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %102, %44, %18
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @PDEBUG(i32, i8*, i32, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
