; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov51x_postprocess.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov51x_postprocess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i32, i32 }
%struct.ov511_frame = type { i32, i32, i32, i32 }

@dumppix = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"Dumping %d bytes\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Cannot convert data to %s\00", align 1
@v4l1_plist = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ov511*, %struct.ov511_frame*)* @ov51x_postprocess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov51x_postprocess(%struct.usb_ov511* %0, %struct.ov511_frame* %1) #0 {
  %3 = alloca %struct.usb_ov511*, align 8
  %4 = alloca %struct.ov511_frame*, align 8
  store %struct.usb_ov511* %0, %struct.usb_ov511** %3, align 8
  store %struct.ov511_frame* %1, %struct.ov511_frame** %4, align 8
  %5 = load i64, i64* @dumppix, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %33

7:                                                ; preds = %2
  %8 = load %struct.ov511_frame*, %struct.ov511_frame** %4, align 8
  %9 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %12 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %15 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @MAX_DATA_SIZE(i32 %13, i32 %16)
  %18 = call i32 @memset(i32 %10, i32 0, i32 %17)
  %19 = load %struct.ov511_frame*, %struct.ov511_frame** %4, align 8
  %20 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @PDEBUG(i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.ov511_frame*, %struct.ov511_frame** %4, align 8
  %24 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ov511_frame*, %struct.ov511_frame** %4, align 8
  %27 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ov511_frame*, %struct.ov511_frame** %4, align 8
  %30 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @memcpy(i32 %25, i32 %28, i32 %31)
  br label %53

33:                                               ; preds = %2
  %34 = load %struct.ov511_frame*, %struct.ov511_frame** %4, align 8
  %35 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %45 [
    i32 130, label %37
    i32 129, label %41
    i32 128, label %41
  ]

37:                                               ; preds = %33
  %38 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %39 = load %struct.ov511_frame*, %struct.ov511_frame** %4, align 8
  %40 = call i32 @ov51x_postprocess_grey(%struct.usb_ov511* %38, %struct.ov511_frame* %39)
  br label %52

41:                                               ; preds = %33, %33
  %42 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %43 = load %struct.ov511_frame*, %struct.ov511_frame** %4, align 8
  %44 = call i32 @ov51x_postprocess_yuv420(%struct.usb_ov511* %42, %struct.ov511_frame* %43)
  br label %52

45:                                               ; preds = %33
  %46 = load i32, i32* @v4l1_plist, align 4
  %47 = load %struct.ov511_frame*, %struct.ov511_frame** %4, align 8
  %48 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @symbolic(i32 %46, i32 %49)
  %51 = call i32 @err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %45, %41, %37
  br label %53

53:                                               ; preds = %52, %7
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @MAX_DATA_SIZE(i32, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ov51x_postprocess_grey(%struct.usb_ov511*, %struct.ov511_frame*) #1

declare dso_local i32 @ov51x_postprocess_yuv420(%struct.usb_ov511*, %struct.ov511_frame*) #1

declare dso_local i32 @err(i8*, i32) #1

declare dso_local i32 @symbolic(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
