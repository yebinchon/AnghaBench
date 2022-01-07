; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_status.c_uvc_event_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_status.c_uvc_event_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_device = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"failure\00", align 1
@__const.uvc_event_control.attrs = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)], align 16
@UVC_TRACE_STATUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Invalid control status event received.\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Control %u/%u %s change len %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvc_device*, i32*, i32)* @uvc_event_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvc_event_control(%struct.uvc_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.uvc_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [3 x i8*], align 16
  store %struct.uvc_device* %0, %struct.uvc_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = bitcast [3 x i8*]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([3 x i8*]* @__const.uvc_event_control.attrs to i8*), i64 24, i1 false)
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 6
  br i1 %10, label %21, label %11

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 4
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %19, 2
  br i1 %20, label %21, label %24

21:                                               ; preds = %16, %11, %3
  %22 = load i32, i32* @UVC_TRACE_STATUS, align 4
  %23 = call i32 (i32, i8*, ...) @uvc_trace(i32 %22, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %40

24:                                               ; preds = %16
  %25 = load i32, i32* @UVC_TRACE_STATUS, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 4
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 (i32, i8*, ...) @uvc_trace(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %28, i32 %31, i8* %37, i32 %38)
  br label %40

40:                                               ; preds = %24, %21
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @uvc_trace(i32, i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
