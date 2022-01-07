; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_viodasd.c_do_viodasd_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_viodasd.c_do_viodasd_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.request = type { i64 }

@num_req_outstanding = common dso_local global i64 0, align 8
@VIOMAXREQ = common dso_local global i64 0, align 8
@REQ_TYPE_FS = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*)* @do_viodasd_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_viodasd_request(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  %3 = alloca %struct.request*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  br label %4

4:                                                ; preds = %38, %20, %1
  %5 = load i64, i64* @num_req_outstanding, align 8
  %6 = load i64, i64* @VIOMAXREQ, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %39

8:                                                ; preds = %4
  %9 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %10 = call %struct.request* @blk_fetch_request(%struct.request_queue* %9)
  store %struct.request* %10, %struct.request** %3, align 8
  %11 = load %struct.request*, %struct.request** %3, align 8
  %12 = icmp eq %struct.request* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %39

14:                                               ; preds = %8
  %15 = load %struct.request*, %struct.request** %3, align 8
  %16 = getelementptr inbounds %struct.request, %struct.request* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @REQ_TYPE_FS, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load %struct.request*, %struct.request** %3, align 8
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  %24 = load %struct.request*, %struct.request** %3, align 8
  %25 = call i32 @blk_rq_sectors(%struct.request* %24)
  %26 = call i32 @viodasd_end_request(%struct.request* %21, i32 %23, i32 %25)
  br label %4

27:                                               ; preds = %14
  %28 = load %struct.request*, %struct.request** %3, align 8
  %29 = call i64 @send_request(%struct.request* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load %struct.request*, %struct.request** %3, align 8
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  %35 = load %struct.request*, %struct.request** %3, align 8
  %36 = call i32 @blk_rq_sectors(%struct.request* %35)
  %37 = call i32 @viodasd_end_request(%struct.request* %32, i32 %34, i32 %36)
  br label %38

38:                                               ; preds = %31, %27
  br label %4

39:                                               ; preds = %13, %4
  ret void
}

declare dso_local %struct.request* @blk_fetch_request(%struct.request_queue*) #1

declare dso_local i32 @viodasd_end_request(%struct.request*, i32, i32) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i64 @send_request(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
