; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stv680.c_stv680_video_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stv680.c_stv680_video_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i64, i64, i64, %struct.usb_stv* }
%struct.usb_stv = type { i32, i64, i64, i64, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"STV(i): Lost data in transfer: exp %li, got %i\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"STV(e): device vapourished in video_irq\00", align 1
@STV680_NUMSCRATCH = common dso_local global i64 0, align 8
@STV680_MAX_NULLPACKETS = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"STV(e): urb burned down in video irq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @stv680_video_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stv680_video_irq(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.usb_stv*, align 8
  %4 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %5 = load %struct.urb*, %struct.urb** %2, align 8
  %6 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 4
  %7 = load %struct.usb_stv*, %struct.usb_stv** %6, align 8
  store %struct.usb_stv* %7, %struct.usb_stv** %3, align 8
  %8 = load %struct.urb*, %struct.urb** %2, align 8
  %9 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %13 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %18 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 (i32, i8*, ...) @PDEBUG(i32 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %16, %1
  %23 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %24 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %154

28:                                               ; preds = %22
  %29 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %30 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = call i32 (i32, i8*, ...) @PDEBUG(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %154

35:                                               ; preds = %28
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %118

38:                                               ; preds = %35
  %39 = load %struct.urb*, %struct.urb** %2, align 8
  %40 = getelementptr inbounds %struct.urb, %struct.urb* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %118, label %43

43:                                               ; preds = %38
  %44 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %45 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %47 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %46, i32 0, i32 6
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %50 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %117 [
    i32 129, label %55
    i32 130, label %55
    i32 128, label %60
  ]

55:                                               ; preds = %43, %43
  %56 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %57 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  br label %117

60:                                               ; preds = %43
  %61 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %62 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %61, i32 0, i32 6
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %65 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.urb*, %struct.urb** %2, align 8
  %71 = getelementptr inbounds %struct.urb, %struct.urb* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @memcpy(i32 %69, i8* %73, i32 %74)
  %76 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %77 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %76, i32 0, i32 6
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %80 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store i32 129, i32* %83, align 4
  %84 = load i32, i32* %4, align 4
  %85 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %86 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %85, i32 0, i32 6
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %89 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  store i32 %84, i32* %92, align 4
  %93 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %94 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %93, i32 0, i32 4
  %95 = call i64 @waitqueue_active(i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %60
  %98 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %99 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %98, i32 0, i32 4
  %100 = call i32 @wake_up_interruptible(i32* %99)
  br label %101

101:                                              ; preds = %97, %60
  %102 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %103 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %102, i32 0, i32 5
  store i32 0, i32* %103, align 4
  %104 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %105 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %105, align 8
  %108 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %109 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @STV680_NUMSCRATCH, align 8
  %112 = icmp uge i64 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %101
  %114 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %115 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %114, i32 0, i32 2
  store i64 0, i64* %115, align 8
  br label %116

116:                                              ; preds = %113, %101
  br label %117

117:                                              ; preds = %43, %116, %55
  br label %139

118:                                              ; preds = %38, %35
  %119 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %120 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %121, 1
  store i64 %122, i64* %120, align 8
  %123 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %124 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @STV680_MAX_NULLPACKETS, align 8
  %127 = icmp sgt i64 %125, %126
  br i1 %127, label %128, label %138

128:                                              ; preds = %118
  %129 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %130 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %129, i32 0, i32 4
  %131 = call i64 @waitqueue_active(i32* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %135 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %134, i32 0, i32 4
  %136 = call i32 @wake_up_interruptible(i32* %135)
  br label %137

137:                                              ; preds = %133, %128
  br label %138

138:                                              ; preds = %137, %118
  br label %139

139:                                              ; preds = %138, %117
  %140 = load %struct.urb*, %struct.urb** %2, align 8
  %141 = getelementptr inbounds %struct.urb, %struct.urb* %140, i32 0, i32 2
  store i64 0, i64* %141, align 8
  %142 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %143 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.urb*, %struct.urb** %2, align 8
  %146 = getelementptr inbounds %struct.urb, %struct.urb* %145, i32 0, i32 1
  store i64 %144, i64* %146, align 8
  %147 = load %struct.urb*, %struct.urb** %2, align 8
  %148 = load i32, i32* @GFP_ATOMIC, align 4
  %149 = call i64 @usb_submit_urb(%struct.urb* %147, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %139
  %152 = call i32 (i32, i8*, ...) @PDEBUG(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %153

153:                                              ; preds = %151, %139
  br label %154

154:                                              ; preds = %153, %33, %27
  ret void
}

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i64 @usb_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
