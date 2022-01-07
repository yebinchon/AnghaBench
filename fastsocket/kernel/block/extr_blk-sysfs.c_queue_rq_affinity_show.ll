; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-sysfs.c_queue_rq_affinity_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-sysfs.c_queue_rq_affinity_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }

@QUEUE_FLAG_SAME_COMP = common dso_local global i32 0, align 4
@QUEUE_FLAG_SAME_FORCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, i8*)* @queue_rq_affinity_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_rq_affinity_show(%struct.request_queue* %0, i8* %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @QUEUE_FLAG_SAME_COMP, align 4
  %8 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %9 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %8, i32 0, i32 0
  %10 = call i32 @test_bit(i32 %7, i32* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @QUEUE_FLAG_SAME_FORCE, align 4
  %12 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %13 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %12, i32 0, i32 0
  %14 = call i32 @test_bit(i32 %11, i32* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = shl i32 %15, %16
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @queue_var_show(i32 %17, i8* %18)
  ret i32 %19
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @queue_var_show(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
