; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_raw1394.c_reset_notification.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_raw1394.c_reset_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_info = type { i64 }
%struct.pending_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [39 x i8] c"reset_notification called - switch %s \00", align 1
@RAW1394_NOTIFY_OFF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@RAW1394_NOTIFY_ON = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_info*, %struct.pending_request*)* @reset_notification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_notification(%struct.file_info* %0, %struct.pending_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file_info*, align 8
  %5 = alloca %struct.pending_request*, align 8
  store %struct.file_info* %0, %struct.file_info** %4, align 8
  store %struct.pending_request* %1, %struct.pending_request** %5, align 8
  %6 = load %struct.pending_request*, %struct.pending_request** %5, align 8
  %7 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @RAW1394_NOTIFY_OFF, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %14 = call i32 @DBGMSG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load %struct.pending_request*, %struct.pending_request** %5, align 8
  %16 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @RAW1394_NOTIFY_OFF, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %2
  %22 = load %struct.pending_request*, %struct.pending_request** %5, align 8
  %23 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @RAW1394_NOTIFY_ON, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %21, %2
  %29 = load %struct.pending_request*, %struct.pending_request** %5, align 8
  %30 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.file_info*, %struct.file_info** %4, align 8
  %34 = getelementptr inbounds %struct.file_info, %struct.file_info* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.pending_request*, %struct.pending_request** %5, align 8
  %36 = call i32 @free_pending_request(%struct.pending_request* %35)
  store i32 0, i32* %3, align 4
  br label %40

37:                                               ; preds = %21
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %37, %28
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @DBGMSG(i8*, i8*) #1

declare dso_local i32 @free_pending_request(%struct.pending_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
