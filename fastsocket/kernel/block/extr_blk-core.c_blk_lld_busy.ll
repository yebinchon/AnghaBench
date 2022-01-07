; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_lld_busy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_lld_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_lld_busy(%struct.request_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.request_queue*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  %4 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %5 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %4, i32 0, i32 0
  %6 = bitcast {}** %5 to i32 (%struct.request_queue*)**
  %7 = load i32 (%struct.request_queue*)*, i32 (%struct.request_queue*)** %6, align 8
  %8 = icmp ne i32 (%struct.request_queue*)* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %11 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to i32 (%struct.request_queue*)**
  %13 = load i32 (%struct.request_queue*)*, i32 (%struct.request_queue*)** %12, align 8
  %14 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %15 = call i32 %13(%struct.request_queue* %14)
  store i32 %15, i32* %2, align 4
  br label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %16, %9
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
