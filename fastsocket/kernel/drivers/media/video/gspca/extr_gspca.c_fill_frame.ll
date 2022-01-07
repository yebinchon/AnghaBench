; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_fill_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_fill_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 (%struct.gspca_dev*, i32*, i32)* }
%struct.urb = type { i32, %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@ESHUTDOWN = common dso_local global i32 0, align 4
@D_ERR = common dso_local global i32 0, align 4
@D_PACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"urb status: %d\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"ISOC data error: [%d] len=%d, status=%d\00", align 1
@DISCARD_PACKET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"packet [%d] o:%d l:%d\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"usb_submit_urb() ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, %struct.urb*)* @fill_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_frame(%struct.gspca_dev* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32 (%struct.gspca_dev*, i32*, i32)*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  %10 = load %struct.urb*, %struct.urb** %4, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %2
  %15 = load %struct.urb*, %struct.urb** %4, align 8
  %16 = getelementptr inbounds %struct.urb, %struct.urb* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @ESHUTDOWN, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %128

22:                                               ; preds = %14
  %23 = load i32, i32* @D_ERR, align 4
  %24 = load i32, i32* @D_PACK, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.urb*, %struct.urb** %4, align 8
  %27 = getelementptr inbounds %struct.urb, %struct.urb* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i32, i8*, i32, ...) @PDEBUG(i32 %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.urb*, %struct.urb** %4, align 8
  %31 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 3
  store i32 0, i32* %31, align 8
  br label %119

32:                                               ; preds = %2
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %34 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %33, i32 0, i32 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32 (%struct.gspca_dev*, i32*, i32)*, i32 (%struct.gspca_dev*, i32*, i32)** %36, align 8
  store i32 (%struct.gspca_dev*, i32*, i32)* %37, i32 (%struct.gspca_dev*, i32*, i32)** %9, align 8
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %115, %32
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.urb*, %struct.urb** %4, align 8
  %41 = getelementptr inbounds %struct.urb, %struct.urb* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %118

44:                                               ; preds = %38
  %45 = load %struct.urb*, %struct.urb** %4, align 8
  %46 = getelementptr inbounds %struct.urb, %struct.urb* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %7, align 4
  %53 = load %struct.urb*, %struct.urb** %4, align 8
  %54 = getelementptr inbounds %struct.urb, %struct.urb* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %44
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* @DISCARD_PACKET, align 4
  %69 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %70 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  br label %115

71:                                               ; preds = %44
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %76 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %81 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  br label %82

82:                                               ; preds = %79, %74
  br label %115

83:                                               ; preds = %71
  %84 = load i32, i32* @D_PACK, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.urb*, %struct.urb** %4, align 8
  %87 = getelementptr inbounds %struct.urb, %struct.urb* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %7, align 4
  %95 = call i32 (i32, i8*, i32, ...) @PDEBUG(i32 %84, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %85, i32 %93, i32 %94)
  %96 = load %struct.urb*, %struct.urb** %4, align 8
  %97 = getelementptr inbounds %struct.urb, %struct.urb* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = inttoptr i64 %98 to i32*
  %100 = load %struct.urb*, %struct.urb** %4, align 8
  %101 = getelementptr inbounds %struct.urb, %struct.urb* %100, i32 0, i32 1
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %99, i64 %108
  store i32* %109, i32** %5, align 8
  %110 = load i32 (%struct.gspca_dev*, i32*, i32)*, i32 (%struct.gspca_dev*, i32*, i32)** %9, align 8
  %111 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %112 = load i32*, i32** %5, align 8
  %113 = load i32, i32* %7, align 4
  %114 = call i32 %110(%struct.gspca_dev* %111, i32* %112, i32 %113)
  br label %115

115:                                              ; preds = %83, %82, %63
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %6, align 4
  br label %38

118:                                              ; preds = %38
  br label %119

119:                                              ; preds = %118, %22
  %120 = load %struct.urb*, %struct.urb** %4, align 8
  %121 = load i32, i32* @GFP_ATOMIC, align 4
  %122 = call i32 @usb_submit_urb(%struct.urb* %120, i32 %121)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load i32, i32* %8, align 4
  %127 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %21, %125, %119
  ret void
}

declare dso_local i32 @PDEBUG(i32, i8*, i32, ...) #1

declare dso_local i32 @err(i8*, i32, ...) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
