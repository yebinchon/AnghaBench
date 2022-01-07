; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_dabusb.c_dabusb_iso_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_dabusb.c_dabusb_iso_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_6__*, i32, i8*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"dabusb_iso_complete\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@_DABUSB_ISOPIPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"dabusb_iso_complete: invalid len %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"dabusb_iso_complete: corrupted packet status: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"dst!=purb->actual_length:%d!=%d\0A\00", align 1
@_stopped = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"overrun (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @dabusb_iso_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dabusb_iso_complete(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %11 = load %struct.urb*, %struct.urb** %2, align 8
  %12 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 6
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %3, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %4, align 8
  store i32 0, i32* %7, align 4
  %17 = load %struct.urb*, %struct.urb** %2, align 8
  %18 = getelementptr inbounds %struct.urb, %struct.urb* %17, i32 0, i32 5
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %8, align 8
  %20 = call i32 @dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.urb*, %struct.urb** %2, align 8
  %22 = getelementptr inbounds %struct.urb, %struct.urb* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp ne i32 %23, %25
  br i1 %26, label %27, label %132

27:                                               ; preds = %1
  %28 = load %struct.urb*, %struct.urb** %2, align 8
  %29 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 2
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = load i32, i32* @_DABUSB_ISOPIPE, align 4
  %32 = call i32 @usb_rcvisocpipe(%struct.TYPE_9__* %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load %struct.urb*, %struct.urb** %2, align 8
  %34 = getelementptr inbounds %struct.urb, %struct.urb* %33, i32 0, i32 2
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @usb_pipeout(i32 %37)
  %39 = call i32 @usb_maxpacket(%struct.TYPE_9__* %35, i32 %36, i32 %38)
  store i32 %39, i32* %10, align 4
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %112, %27
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.urb*, %struct.urb** %2, align 8
  %43 = getelementptr inbounds %struct.urb, %struct.urb* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %115

46:                                               ; preds = %40
  %47 = load %struct.urb*, %struct.urb** %2, align 8
  %48 = getelementptr inbounds %struct.urb, %struct.urb* %47, i32 0, i32 3
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %97, label %56

56:                                               ; preds = %46
  %57 = load %struct.urb*, %struct.urb** %2, align 8
  %58 = getelementptr inbounds %struct.urb, %struct.urb* %57, i32 0, i32 3
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp sle i32 %65, %66
  br i1 %67, label %68, label %89

68:                                               ; preds = %56
  %69 = load i8*, i8** %8, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr i8, i8* %69, i64 %71
  %73 = load i8*, i8** %8, align 8
  %74 = load %struct.urb*, %struct.urb** %2, align 8
  %75 = getelementptr inbounds %struct.urb, %struct.urb* %74, i32 0, i32 3
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr i8, i8* %73, i64 %82
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @memcpy(i8* %72, i8* %83, i32 %84)
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %7, align 4
  br label %96

89:                                               ; preds = %56
  %90 = load %struct.urb*, %struct.urb** %2, align 8
  %91 = getelementptr inbounds %struct.urb, %struct.urb* %90, i32 0, i32 2
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %6, align 4
  %95 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %93, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %89, %68
  br label %111

97:                                               ; preds = %46
  %98 = load %struct.urb*, %struct.urb** %2, align 8
  %99 = getelementptr inbounds %struct.urb, %struct.urb* %98, i32 0, i32 2
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load %struct.urb*, %struct.urb** %2, align 8
  %103 = getelementptr inbounds %struct.urb, %struct.urb* %102, i32 0, i32 3
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @dev_warn(i32* %101, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %97, %96
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %5, align 4
  br label %40

115:                                              ; preds = %40
  %116 = load i32, i32* %7, align 4
  %117 = load %struct.urb*, %struct.urb** %2, align 8
  %118 = getelementptr inbounds %struct.urb, %struct.urb* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %116, %119
  br i1 %120, label %121, label %131

121:                                              ; preds = %115
  %122 = load %struct.urb*, %struct.urb** %2, align 8
  %123 = getelementptr inbounds %struct.urb, %struct.urb* %122, i32 0, i32 2
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %7, align 4
  %127 = load %struct.urb*, %struct.urb** %2, align 8
  %128 = getelementptr inbounds %struct.urb, %struct.urb* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %125, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %126, i32 %129)
  br label %131

131:                                              ; preds = %121, %115
  br label %132

132:                                              ; preds = %131, %1
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 4
  %135 = call i64 @atomic_dec_and_test(i32* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %161

137:                                              ; preds = %132
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %161, label %142

142:                                              ; preds = %137
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @_stopped, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %161

148:                                              ; preds = %142
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 8
  %153 = load %struct.urb*, %struct.urb** %2, align 8
  %154 = getelementptr inbounds %struct.urb, %struct.urb* %153, i32 0, i32 2
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %156, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %159)
  br label %161

161:                                              ; preds = %148, %142, %137, %132
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 2
  %164 = call i32 @wake_up(i32* %163)
  ret void
}

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @usb_rcvisocpipe(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @usb_maxpacket(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @usb_pipeout(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
