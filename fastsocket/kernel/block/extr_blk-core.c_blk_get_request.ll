; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_get_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_get_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.request_queue = type { i32 }

@READ = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@__GFP_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.request* @blk_get_request(%struct.request_queue* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.request*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @READ, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @WRITE, align 4
  %14 = icmp ne i32 %12, %13
  br label %15

15:                                               ; preds = %11, %3
  %16 = phi i1 [ false, %3 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %20 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @spin_lock_irq(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @__GFP_WAIT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %15
  %28 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call %struct.request* @get_request_wait(%struct.request_queue* %28, i32 %29, i32* null)
  store %struct.request* %30, %struct.request** %7, align 8
  br label %36

31:                                               ; preds = %15
  %32 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call %struct.request* @get_request(%struct.request_queue* %32, i32 %33, i32* null, i32 %34)
  store %struct.request* %35, %struct.request** %7, align 8
  br label %36

36:                                               ; preds = %31, %27
  %37 = load %struct.request*, %struct.request** %7, align 8
  %38 = icmp ne %struct.request* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %41 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @spin_unlock_irq(i32 %42)
  br label %44

44:                                               ; preds = %39, %36
  %45 = load %struct.request*, %struct.request** %7, align 8
  ret %struct.request* %45
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local %struct.request* @get_request_wait(%struct.request_queue*, i32, i32*) #1

declare dso_local %struct.request* @get_request(%struct.request_queue*, i32, i32*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
