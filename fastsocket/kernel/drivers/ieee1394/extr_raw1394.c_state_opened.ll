; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_raw1394.c_state_opened.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_raw1394.c_state_opened.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_info = type { i32, i32 }
%struct.pending_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i64, i32, i32 }

@RAW1394_REQ_INITIALIZE = common dso_local global i64 0, align 8
@initialized = common dso_local global i32 0, align 4
@RAW1394_ERROR_NONE = common dso_local global i32 0, align 4
@internal_generation = common dso_local global i32 0, align 4
@RAW1394_ERROR_COMPAT = common dso_local global i32 0, align 4
@RAW1394_ERROR_STATE_ORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_info*, %struct.pending_request*)* @state_opened to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @state_opened(%struct.file_info* %0, %struct.pending_request* %1) #0 {
  %3 = alloca %struct.file_info*, align 8
  %4 = alloca %struct.pending_request*, align 8
  store %struct.file_info* %0, %struct.file_info** %3, align 8
  store %struct.pending_request* %1, %struct.pending_request** %4, align 8
  %5 = load %struct.pending_request*, %struct.pending_request** %4, align 8
  %6 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @RAW1394_REQ_INITIALIZE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %43

11:                                               ; preds = %2
  %12 = load %struct.pending_request*, %struct.pending_request** %4, align 8
  %13 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %34 [
    i32 128, label %16
    i32 3, label %16
  ]

16:                                               ; preds = %11, %11
  %17 = load i32, i32* @initialized, align 4
  %18 = load %struct.file_info*, %struct.file_info** %3, align 8
  %19 = getelementptr inbounds %struct.file_info, %struct.file_info* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.pending_request*, %struct.pending_request** %4, align 8
  %21 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.file_info*, %struct.file_info** %3, align 8
  %25 = getelementptr inbounds %struct.file_info, %struct.file_info* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @RAW1394_ERROR_NONE, align 4
  %27 = load %struct.pending_request*, %struct.pending_request** %4, align 8
  %28 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  store i32 %26, i32* %29, align 8
  %30 = call i32 @atomic_read(i32* @internal_generation)
  %31 = load %struct.pending_request*, %struct.pending_request** %4, align 8
  %32 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 4
  store i32 %30, i32* %33, align 4
  br label %42

34:                                               ; preds = %11
  %35 = load i32, i32* @RAW1394_ERROR_COMPAT, align 4
  %36 = load %struct.pending_request*, %struct.pending_request** %4, align 8
  %37 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  store i32 %35, i32* %38, align 8
  %39 = load %struct.pending_request*, %struct.pending_request** %4, align 8
  %40 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 128, i32* %41, align 8
  br label %42

42:                                               ; preds = %34, %16
  br label %48

43:                                               ; preds = %2
  %44 = load i32, i32* @RAW1394_ERROR_STATE_ORDER, align 4
  %45 = load %struct.pending_request*, %struct.pending_request** %4, align 8
  %46 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  store i32 %44, i32* %47, align 8
  br label %48

48:                                               ; preds = %43, %42
  %49 = load %struct.pending_request*, %struct.pending_request** %4, align 8
  %50 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load %struct.pending_request*, %struct.pending_request** %4, align 8
  %53 = call i32 @queue_complete_req(%struct.pending_request* %52)
  ret i32 0
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @queue_complete_req(%struct.pending_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
