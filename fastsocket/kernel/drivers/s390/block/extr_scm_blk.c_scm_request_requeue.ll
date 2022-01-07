; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_scm_blk.c_scm_request_requeue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_scm_blk.c_scm_request_requeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scm_request = type { i32, %struct.scm_blk_dev* }
%struct.scm_blk_dev = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scm_request_requeue(%struct.scm_request* %0) #0 {
  %2 = alloca %struct.scm_request*, align 8
  %3 = alloca %struct.scm_blk_dev*, align 8
  store %struct.scm_request* %0, %struct.scm_request** %2, align 8
  %4 = load %struct.scm_request*, %struct.scm_request** %2, align 8
  %5 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %4, i32 0, i32 1
  %6 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %5, align 8
  store %struct.scm_blk_dev* %6, %struct.scm_blk_dev** %3, align 8
  %7 = load %struct.scm_request*, %struct.scm_request** %2, align 8
  %8 = call i32 @scm_release_cluster(%struct.scm_request* %7)
  %9 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %3, align 8
  %10 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.scm_request*, %struct.scm_request** %2, align 8
  %13 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @blk_requeue_request(i32 %11, i32 %14)
  %16 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %3, align 8
  %17 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %16, i32 0, i32 0
  %18 = call i32 @atomic_dec(i32* %17)
  %19 = load %struct.scm_request*, %struct.scm_request** %2, align 8
  %20 = call i32 @scm_request_done(%struct.scm_request* %19)
  %21 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %3, align 8
  %22 = call i32 @scm_ensure_queue_restart(%struct.scm_blk_dev* %21)
  ret void
}

declare dso_local i32 @scm_release_cluster(%struct.scm_request*) #1

declare dso_local i32 @blk_requeue_request(i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @scm_request_done(%struct.scm_request*) #1

declare dso_local i32 @scm_ensure_queue_restart(%struct.scm_blk_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
