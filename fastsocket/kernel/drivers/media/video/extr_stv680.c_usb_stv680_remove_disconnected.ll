; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stv680.c_usb_stv680_remove_disconnected.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stv680.c_usb_stv680_remove_disconnected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_stv = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i32**, i32, i64, %struct.TYPE_4__*, i32* }
%struct.TYPE_6__ = type { %struct.usb_stv* }
%struct.TYPE_5__ = type { %struct.usb_stv* }
%struct.TYPE_4__ = type { i8* }

@FRAME_ERROR = common dso_local global i8* null, align 8
@STV680_NUMSBUF = common dso_local global i32 0, align 4
@STV680_NUMSCRATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"STV(i): %s disconnected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_stv*)* @usb_stv680_remove_disconnected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_stv680_remove_disconnected(%struct.usb_stv* %0) #0 {
  %2 = alloca %struct.usb_stv*, align 8
  %3 = alloca i32, align 4
  store %struct.usb_stv* %0, %struct.usb_stv** %2, align 8
  %4 = load %struct.usb_stv*, %struct.usb_stv** %2, align 8
  %5 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %4, i32 0, i32 7
  store i32* null, i32** %5, align 8
  %6 = load i8*, i8** @FRAME_ERROR, align 8
  %7 = load %struct.usb_stv*, %struct.usb_stv** %2, align 8
  %8 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %7, i32 0, i32 6
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i8* %6, i8** %11, align 8
  %12 = load i8*, i8** @FRAME_ERROR, align 8
  %13 = load %struct.usb_stv*, %struct.usb_stv** %2, align 8
  %14 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %13, i32 0, i32 6
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i8* %12, i8** %17, align 8
  %18 = load %struct.usb_stv*, %struct.usb_stv** %2, align 8
  %19 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %18, i32 0, i32 5
  store i64 0, i64* %19, align 8
  %20 = load %struct.usb_stv*, %struct.usb_stv** %2, align 8
  %21 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %20, i32 0, i32 4
  %22 = call i32 @wake_up_interruptible(i32* %21)
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %69, %1
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @STV680_NUMSBUF, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %72

27:                                               ; preds = %23
  %28 = load %struct.usb_stv*, %struct.usb_stv** %2, align 8
  %29 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %28, i32 0, i32 3
  %30 = load i32**, i32*** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %68

36:                                               ; preds = %27
  %37 = load %struct.usb_stv*, %struct.usb_stv** %2, align 8
  %38 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %37, i32 0, i32 3
  %39 = load i32**, i32*** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @usb_kill_urb(i32* %43)
  %45 = load %struct.usb_stv*, %struct.usb_stv** %2, align 8
  %46 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %45, i32 0, i32 3
  %47 = load i32**, i32*** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @usb_free_urb(i32* %51)
  %53 = load %struct.usb_stv*, %struct.usb_stv** %2, align 8
  %54 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %53, i32 0, i32 3
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  store i32* null, i32** %58, align 8
  %59 = load %struct.usb_stv*, %struct.usb_stv** %2, align 8
  %60 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %59, i32 0, i32 2
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load %struct.usb_stv*, %struct.usb_stv** %65, align 8
  %67 = call i32 @kfree(%struct.usb_stv* %66)
  br label %68

68:                                               ; preds = %36, %27
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %23

72:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %87, %72
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @STV680_NUMSCRATCH, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %73
  %78 = load %struct.usb_stv*, %struct.usb_stv** %2, align 8
  %79 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %78, i32 0, i32 1
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load %struct.usb_stv*, %struct.usb_stv** %84, align 8
  %86 = call i32 @kfree(%struct.usb_stv* %85)
  br label %87

87:                                               ; preds = %77
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %3, align 4
  br label %73

90:                                               ; preds = %73
  %91 = load %struct.usb_stv*, %struct.usb_stv** %2, align 8
  %92 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @PDEBUG(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %93)
  %95 = load %struct.usb_stv*, %struct.usb_stv** %2, align 8
  %96 = call i32 @kfree(%struct.usb_stv* %95)
  ret void
}

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @usb_kill_urb(i32*) #1

declare dso_local i32 @usb_free_urb(i32*) #1

declare dso_local i32 @kfree(%struct.usb_stv*) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
