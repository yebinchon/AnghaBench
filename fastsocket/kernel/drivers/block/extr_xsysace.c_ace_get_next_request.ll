; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_xsysace.c_ace_get_next_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_xsysace.c_ace_get_next_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i64 }
%struct.request_queue = type { i32 }

@REQ_TYPE_FS = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.request* @ace_get_next_request(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  %3 = alloca %struct.request*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  br label %4

4:                                                ; preds = %15, %1
  %5 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %6 = call %struct.request* @blk_peek_request(%struct.request_queue* %5)
  store %struct.request* %6, %struct.request** %3, align 8
  %7 = icmp ne %struct.request* %6, null
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  %9 = load %struct.request*, %struct.request** %3, align 8
  %10 = getelementptr inbounds %struct.request, %struct.request* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @REQ_TYPE_FS, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %22

15:                                               ; preds = %8
  %16 = load %struct.request*, %struct.request** %3, align 8
  %17 = call i32 @blk_start_request(%struct.request* %16)
  %18 = load %struct.request*, %struct.request** %3, align 8
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  %21 = call i32 @__blk_end_request_all(%struct.request* %18, i32 %20)
  br label %4

22:                                               ; preds = %14, %4
  %23 = load %struct.request*, %struct.request** %3, align 8
  ret %struct.request* %23
}

declare dso_local %struct.request* @blk_peek_request(%struct.request_queue*) #1

declare dso_local i32 @blk_start_request(%struct.request*) #1

declare dso_local i32 @__blk_end_request_all(%struct.request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
