; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_raw1394.c___queue_complete_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_raw1394.c___queue_complete_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pending_request = type { i32, %struct.file_info* }
%struct.file_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pending_request*)* @__queue_complete_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__queue_complete_req(%struct.pending_request* %0) #0 {
  %2 = alloca %struct.pending_request*, align 8
  %3 = alloca %struct.file_info*, align 8
  store %struct.pending_request* %0, %struct.pending_request** %2, align 8
  %4 = load %struct.pending_request*, %struct.pending_request** %2, align 8
  %5 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %4, i32 0, i32 1
  %6 = load %struct.file_info*, %struct.file_info** %5, align 8
  store %struct.file_info* %6, %struct.file_info** %3, align 8
  %7 = load %struct.pending_request*, %struct.pending_request** %2, align 8
  %8 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %7, i32 0, i32 0
  %9 = load %struct.file_info*, %struct.file_info** %3, align 8
  %10 = getelementptr inbounds %struct.file_info, %struct.file_info* %9, i32 0, i32 1
  %11 = call i32 @list_move_tail(i32* %8, i32* %10)
  %12 = load %struct.file_info*, %struct.file_info** %3, align 8
  %13 = getelementptr inbounds %struct.file_info, %struct.file_info* %12, i32 0, i32 0
  %14 = call i32 @wake_up(i32* %13)
  ret void
}

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
