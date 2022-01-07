; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stv680.c_stv_set_video_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stv680.c_stv_set_video_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_stv = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"STV(e): Out of (small buf) memory\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"STV(e): Could not get descriptor 0100.\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"STV(i): Setting video mode.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_stv*)* @stv_set_video_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv_set_video_mode(%struct.usb_stv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_stv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.usb_stv* %0, %struct.usb_stv** %3, align 8
  store i32 1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i8* @kmalloc(i32 40, i32 %7)
  store i8* %8, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @PDEBUG(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %75

13:                                               ; preds = %1
  %14 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %15 = call i32 @stv_set_config(%struct.usb_stv* %14, i32 1, i32 0, i32 0)
  store i32 %15, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @kfree(i8* %18)
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %75

21:                                               ; preds = %13
  %22 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @stv_sndctrl(i32 2, %struct.usb_stv* %22, i32 6, i32 256, i8* %23, i32 18)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 8
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %31, 83
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 9
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %37, 5
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = call i32 @PDEBUG(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %63

41:                                               ; preds = %33, %27, %21
  %42 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %43 = call i32 @stv_set_config(%struct.usb_stv* %42, i32 1, i32 0, i32 1)
  store i32 %43, i32* %4, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %63

46:                                               ; preds = %41
  %47 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @stv_sndctrl(i32 0, %struct.usb_stv* %47, i32 133, i32 0, i8* %48, i32 16)
  store i32 %49, i32* %4, align 4
  %50 = icmp ne i32 %49, 16
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %63

52:                                               ; preds = %46
  %53 = call i32 @PDEBUG(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %54 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %55 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %56 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @stv_sndctrl(i32 1, %struct.usb_stv* %54, i32 9, i32 %57, i8* %58, i32 0)
  store i32 %59, i32* %4, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %63

62:                                               ; preds = %52
  br label %72

63:                                               ; preds = %61, %51, %45, %39
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @kfree(i8* %64)
  %66 = load i32, i32* %5, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %70 = call i32 @stv_stop_video(%struct.usb_stv* %69)
  br label %71

71:                                               ; preds = %68, %63
  store i32 -1, i32* %2, align 4
  br label %75

72:                                               ; preds = %62
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @kfree(i8* %73)
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %72, %71, %17, %11
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @stv_set_config(%struct.usb_stv*, i32, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @stv_sndctrl(i32, %struct.usb_stv*, i32, i32, i8*, i32) #1

declare dso_local i32 @stv_stop_video(%struct.usb_stv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
