; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_raw1394.c_handle_fcp_listen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_raw1394.c_handle_fcp_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_info = type { i32* }
%struct.pending_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i8*, i32, i64 }

@RAW1394_ERROR_ALREADY = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file_info*, %struct.pending_request*)* @handle_fcp_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_fcp_listen(%struct.file_info* %0, %struct.pending_request* %1) #0 {
  %3 = alloca %struct.file_info*, align 8
  %4 = alloca %struct.pending_request*, align 8
  store %struct.file_info* %0, %struct.file_info** %3, align 8
  store %struct.pending_request* %1, %struct.pending_request** %4, align 8
  %5 = load %struct.pending_request*, %struct.pending_request** %4, align 8
  %6 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %2
  %11 = load %struct.file_info*, %struct.file_info** %3, align 8
  %12 = getelementptr inbounds %struct.file_info, %struct.file_info* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load i8*, i8** @RAW1394_ERROR_ALREADY, align 8
  %17 = load %struct.pending_request*, %struct.pending_request** %4, align 8
  %18 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i8* %16, i8** %19, align 8
  br label %28

20:                                               ; preds = %10
  %21 = load %struct.pending_request*, %struct.pending_request** %4, align 8
  %22 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32* @int2ptr(i32 %24)
  %26 = load %struct.file_info*, %struct.file_info** %3, align 8
  %27 = getelementptr inbounds %struct.file_info, %struct.file_info* %26, i32 0, i32 0
  store i32* %25, i32** %27, align 8
  br label %28

28:                                               ; preds = %20, %15
  br label %43

29:                                               ; preds = %2
  %30 = load %struct.file_info*, %struct.file_info** %3, align 8
  %31 = getelementptr inbounds %struct.file_info, %struct.file_info* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load i8*, i8** @RAW1394_ERROR_ALREADY, align 8
  %36 = load %struct.pending_request*, %struct.pending_request** %4, align 8
  %37 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i8* %35, i8** %38, align 8
  br label %42

39:                                               ; preds = %29
  %40 = load %struct.file_info*, %struct.file_info** %3, align 8
  %41 = getelementptr inbounds %struct.file_info, %struct.file_info* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %39, %34
  br label %43

43:                                               ; preds = %42, %28
  %44 = load %struct.pending_request*, %struct.pending_request** %4, align 8
  %45 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.pending_request*, %struct.pending_request** %4, align 8
  %48 = call i32 @queue_complete_req(%struct.pending_request* %47)
  ret void
}

declare dso_local i32* @int2ptr(i32) #1

declare dso_local i32 @queue_complete_req(%struct.pending_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
