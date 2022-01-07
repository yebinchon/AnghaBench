; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_user_sdma.c_ipath_user_sdma_make_progress.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_user_sdma.c_ipath_user_sdma_make_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32 }
%struct.ipath_user_sdma_queue = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipath_user_sdma_make_progress(%struct.ipath_devdata* %0, %struct.ipath_user_sdma_queue* %1) #0 {
  %3 = alloca %struct.ipath_devdata*, align 8
  %4 = alloca %struct.ipath_user_sdma_queue*, align 8
  %5 = alloca i32, align 4
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %3, align 8
  store %struct.ipath_user_sdma_queue* %1, %struct.ipath_user_sdma_queue** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ipath_user_sdma_queue*, %struct.ipath_user_sdma_queue** %4, align 8
  %7 = getelementptr inbounds %struct.ipath_user_sdma_queue, %struct.ipath_user_sdma_queue* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %10 = call i32 @ipath_user_sdma_hwqueue_clean(%struct.ipath_devdata* %9)
  %11 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %12 = load %struct.ipath_user_sdma_queue*, %struct.ipath_user_sdma_queue** %4, align 8
  %13 = call i32 @ipath_user_sdma_queue_clean(%struct.ipath_devdata* %11, %struct.ipath_user_sdma_queue* %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.ipath_user_sdma_queue*, %struct.ipath_user_sdma_queue** %4, align 8
  %15 = getelementptr inbounds %struct.ipath_user_sdma_queue, %struct.ipath_user_sdma_queue* %14, i32 0, i32 0
  %16 = call i32 @mutex_unlock(i32* %15)
  %17 = load i32, i32* %5, align 4
  ret i32 %17
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ipath_user_sdma_hwqueue_clean(%struct.ipath_devdata*) #1

declare dso_local i32 @ipath_user_sdma_queue_clean(%struct.ipath_devdata*, %struct.ipath_user_sdma_queue*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
