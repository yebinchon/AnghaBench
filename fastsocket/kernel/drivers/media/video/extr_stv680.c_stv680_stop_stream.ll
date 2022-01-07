; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stv680.c_stv680_stop_stream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stv680.c_stv680_stop_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_stv = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32**, i64, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }

@STV680_NUMSBUF = common dso_local global i32 0, align 4
@STV680_NUMSCRATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_stv*)* @stv680_stop_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv680_stop_stream(%struct.usb_stv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_stv*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_stv* %0, %struct.usb_stv** %3, align 8
  %5 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %6 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %11 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %1
  store i32 1, i32* %2, align 4
  br label %93

15:                                               ; preds = %9
  %16 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %17 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %64, %15
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @STV680_NUMSBUF, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %67

22:                                               ; preds = %18
  %23 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %24 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %23, i32 0, i32 2
  %25 = load i32**, i32*** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %63

31:                                               ; preds = %22
  %32 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %33 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %32, i32 0, i32 2
  %34 = load i32**, i32*** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @usb_kill_urb(i32* %38)
  %40 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %41 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %40, i32 0, i32 2
  %42 = load i32**, i32*** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @usb_free_urb(i32* %46)
  %48 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %49 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %48, i32 0, i32 2
  %50 = load i32**, i32*** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52
  store i32* null, i32** %53, align 8
  %54 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %55 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @kfree(i32* %61)
  br label %63

63:                                               ; preds = %31, %22
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %18

67:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %89, %67
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @STV680_NUMSCRATCH, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %92

72:                                               ; preds = %68
  %73 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %74 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @kfree(i32* %80)
  %82 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %83 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i32* null, i32** %88, align 8
  br label %89

89:                                               ; preds = %72
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %4, align 4
  br label %68

92:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %14
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @usb_kill_urb(i32*) #1

declare dso_local i32 @usb_free_urb(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
