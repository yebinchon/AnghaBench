; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_dm_kill_unmapped_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_dm_kill_unmapped_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, %struct.dm_rq_target_io* }
%struct.dm_rq_target_io = type { %struct.request* }

@REQ_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_kill_unmapped_request(%struct.request* %0, i32 %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_rq_target_io*, align 8
  %6 = alloca %struct.request*, align 8
  store %struct.request* %0, %struct.request** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.request*, %struct.request** %3, align 8
  %8 = getelementptr inbounds %struct.request, %struct.request* %7, i32 0, i32 1
  %9 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %8, align 8
  store %struct.dm_rq_target_io* %9, %struct.dm_rq_target_io** %5, align 8
  %10 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %5, align 8
  %11 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %10, i32 0, i32 0
  %12 = load %struct.request*, %struct.request** %11, align 8
  store %struct.request* %12, %struct.request** %6, align 8
  %13 = load i32, i32* @REQ_FAILED, align 4
  %14 = load %struct.request*, %struct.request** %6, align 8
  %15 = getelementptr inbounds %struct.request, %struct.request* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.request*, %struct.request** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @dm_complete_request(%struct.request* %18, i32 %19)
  ret void
}

declare dso_local i32 @dm_complete_request(%struct.request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
