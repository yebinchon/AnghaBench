; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_raw1394.c_queue_rawiso_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_raw1394.c_queue_rawiso_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_info = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.pending_request = type { %struct.TYPE_4__, %struct.file_info* }
%struct.TYPE_4__ = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@RAW1394_REQ_RAWISO_ACTIVITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file_info*)* @queue_rawiso_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @queue_rawiso_event(%struct.file_info* %0) #0 {
  %2 = alloca %struct.file_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.pending_request*, align 8
  store %struct.file_info* %0, %struct.file_info** %2, align 8
  %5 = load %struct.file_info*, %struct.file_info** %2, align 8
  %6 = getelementptr inbounds %struct.file_info, %struct.file_info* %5, i32 0, i32 0
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.file_info*, %struct.file_info** %2, align 8
  %10 = call i32 @__rawiso_event_in_queue(%struct.file_info* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %47, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call %struct.pending_request* @__alloc_pending_request(i32 %13)
  store %struct.pending_request* %14, %struct.pending_request** %4, align 8
  %15 = load %struct.pending_request*, %struct.pending_request** %4, align 8
  %16 = icmp ne %struct.pending_request* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %12
  %18 = load %struct.file_info*, %struct.file_info** %2, align 8
  %19 = load %struct.pending_request*, %struct.pending_request** %4, align 8
  %20 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %19, i32 0, i32 1
  store %struct.file_info* %18, %struct.file_info** %20, align 8
  %21 = load i32, i32* @RAW1394_REQ_RAWISO_ACTIVITY, align 4
  %22 = load %struct.pending_request*, %struct.pending_request** %4, align 8
  %23 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  %25 = load %struct.file_info*, %struct.file_info** %2, align 8
  %26 = getelementptr inbounds %struct.file_info, %struct.file_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @get_hpsb_generation(i32 %27)
  %29 = load %struct.pending_request*, %struct.pending_request** %4, align 8
  %30 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load %struct.pending_request*, %struct.pending_request** %4, align 8
  %33 = call i32 @__queue_complete_req(%struct.pending_request* %32)
  br label %46

34:                                               ; preds = %12
  %35 = load %struct.file_info*, %struct.file_info** %2, align 8
  %36 = getelementptr inbounds %struct.file_info, %struct.file_info* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = icmp ne %struct.TYPE_3__* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.file_info*, %struct.file_info** %2, align 8
  %41 = getelementptr inbounds %struct.file_info, %struct.file_info* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = call i32 @atomic_inc(i32* %43)
  br label %45

45:                                               ; preds = %39, %34
  br label %46

46:                                               ; preds = %45, %17
  br label %47

47:                                               ; preds = %46, %1
  %48 = load %struct.file_info*, %struct.file_info** %2, align 8
  %49 = getelementptr inbounds %struct.file_info, %struct.file_info* %48, i32 0, i32 0
  %50 = load i64, i64* %3, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__rawiso_event_in_queue(%struct.file_info*) #1

declare dso_local %struct.pending_request* @__alloc_pending_request(i32) #1

declare dso_local i32 @get_hpsb_generation(i32) #1

declare dso_local i32 @__queue_complete_req(%struct.pending_request*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
