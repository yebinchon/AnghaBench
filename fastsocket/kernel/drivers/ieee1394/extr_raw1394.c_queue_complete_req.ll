; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_raw1394.c_queue_complete_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_raw1394.c_queue_complete_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pending_request = type { %struct.file_info* }
%struct.file_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pending_request*)* @queue_complete_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @queue_complete_req(%struct.pending_request* %0) #0 {
  %2 = alloca %struct.pending_request*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.file_info*, align 8
  store %struct.pending_request* %0, %struct.pending_request** %2, align 8
  %5 = load %struct.pending_request*, %struct.pending_request** %2, align 8
  %6 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %5, i32 0, i32 0
  %7 = load %struct.file_info*, %struct.file_info** %6, align 8
  store %struct.file_info* %7, %struct.file_info** %4, align 8
  %8 = load %struct.file_info*, %struct.file_info** %4, align 8
  %9 = getelementptr inbounds %struct.file_info, %struct.file_info* %8, i32 0, i32 0
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.pending_request*, %struct.pending_request** %2, align 8
  %13 = call i32 @__queue_complete_req(%struct.pending_request* %12)
  %14 = load %struct.file_info*, %struct.file_info** %4, align 8
  %15 = getelementptr inbounds %struct.file_info, %struct.file_info* %14, i32 0, i32 0
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @spin_unlock_irqrestore(i32* %15, i64 %16)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__queue_complete_req(%struct.pending_request*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
