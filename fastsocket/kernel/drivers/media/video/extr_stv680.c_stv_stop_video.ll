; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stv680.c_stv_stop_video.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stv680.c_stv_stop_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_stv = type { i8 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"STV(e): Out of (small buf) memory\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"STV(i): last error: %i,  command = 0x%x\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"STV(i): Camera reset to idle mode.\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"STV(e): Reset config during exit failed\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"STV(e): Stop_video: problem setting original mode\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"STV(e): Stop_video: Set_Camera_Mode failed\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"STV(e): camera NOT set to original resolution.\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"STV(i): Camera set to original resolution\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_stv*)* @stv_stop_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv_stop_video(%struct.usb_stv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_stv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.usb_stv* %0, %struct.usb_stv** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i8* @kmalloc(i32 40, i32 %6)
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 (i32, i8*, ...) @PDEBUG(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %98

12:                                               ; preds = %1
  %13 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @stv_sndctrl(i32 1, %struct.usb_stv* %13, i32 4, i32 0, i8* %14, i32 0)
  store i32 %15, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @stv_sndctrl(i32 0, %struct.usb_stv* %18, i32 128, i32 0, i8* %19, i32 2)
  store i32 %20, i32* %4, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = call i32 (i32, i8*, ...) @PDEBUG(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %28)
  br label %32

30:                                               ; preds = %12
  %31 = call i32 (i32, i8*, ...) @PDEBUG(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %17
  %33 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %34 = call i32 @stv_set_config(%struct.usb_stv* %33, i32 1, i32 0, i32 0)
  store i32 %34, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i32 (i32, i8*, ...) @PDEBUG(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %32
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  store i8 -16, i8* %40, align 1
  %41 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @stv_sndctrl(i32 0, %struct.usb_stv* %41, i32 135, i32 0, i8* %42, i32 8)
  store i32 %43, i32* %4, align 4
  %44 = icmp ne i32 %43, 8
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = call i32 (i32, i8*, ...) @PDEBUG(i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %38
  %48 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %49 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %48, i32 0, i32 0
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp ne i32 %51, %55
  br i1 %56, label %57, label %94

57:                                               ; preds = %47
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @memset(i8* %58, i32 0, i32 8)
  %60 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %61 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %60, i32 0, i32 0
  %62 = load i8, i8* %61, align 1
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  store i8 %62, i8* %64, align 1
  %65 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 @stv_sndctrl(i32 3, %struct.usb_stv* %65, i32 7, i32 256, i8* %66, i32 8)
  store i32 %67, i32* %4, align 4
  %68 = icmp ne i32 %67, 8
  br i1 %68, label %69, label %71

69:                                               ; preds = %57
  %70 = call i32 (i32, i8*, ...) @PDEBUG(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %57
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  store i8 -16, i8* %73, align 1
  %74 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = call i32 @stv_sndctrl(i32 0, %struct.usb_stv* %74, i32 135, i32 0, i8* %75, i32 8)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 8
  br i1 %78, label %89, label %79

79:                                               ; preds = %71
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %85 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %84, i32 0, i32 0
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = icmp ne i32 %83, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %79, %71
  %90 = call i32 (i32, i8*, ...) @PDEBUG(i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %93

91:                                               ; preds = %79
  %92 = call i32 (i32, i8*, ...) @PDEBUG(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %89
  br label %94

94:                                               ; preds = %93, %47
  %95 = load i8*, i8** %5, align 8
  %96 = call i32 @kfree(i8* %95)
  %97 = load i32, i32* %4, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %94, %10
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i32 @stv_sndctrl(i32, %struct.usb_stv*, i32, i32, i8*, i32) #1

declare dso_local i32 @stv_set_config(%struct.usb_stv*, i32, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
