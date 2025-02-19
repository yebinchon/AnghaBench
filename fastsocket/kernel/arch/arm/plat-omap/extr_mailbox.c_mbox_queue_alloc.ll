; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_mailbox.c_mbox_queue_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_mailbox.c_mbox_queue_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mbox_queue = type { i32, %struct.request_queue*, i32 }
%struct.request_queue = type { %struct.omap_mbox* }
%struct.omap_mbox = type { i32 }
%struct.work_struct = type opaque
%struct.work_struct.0 = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.omap_mbox_queue* (%struct.omap_mbox*, i32*, void (%struct.work_struct*)*)* @mbox_queue_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.omap_mbox_queue* @mbox_queue_alloc(%struct.omap_mbox* %0, i32* %1, void (%struct.work_struct*)* %2) #0 {
  %4 = alloca %struct.omap_mbox_queue*, align 8
  %5 = alloca %struct.omap_mbox*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca void (%struct.work_struct*)*, align 8
  %8 = alloca %struct.request_queue*, align 8
  %9 = alloca %struct.omap_mbox_queue*, align 8
  store %struct.omap_mbox* %0, %struct.omap_mbox** %5, align 8
  store i32* %1, i32** %6, align 8
  store void (%struct.work_struct*)* %2, void (%struct.work_struct*)** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.omap_mbox_queue* @kzalloc(i32 24, i32 %10)
  store %struct.omap_mbox_queue* %11, %struct.omap_mbox_queue** %9, align 8
  %12 = load %struct.omap_mbox_queue*, %struct.omap_mbox_queue** %9, align 8
  %13 = icmp ne %struct.omap_mbox_queue* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.omap_mbox_queue* null, %struct.omap_mbox_queue** %4, align 8
  br label %42

15:                                               ; preds = %3
  %16 = load %struct.omap_mbox_queue*, %struct.omap_mbox_queue** %9, align 8
  %17 = getelementptr inbounds %struct.omap_mbox_queue, %struct.omap_mbox_queue* %16, i32 0, i32 2
  %18 = call i32 @spin_lock_init(i32* %17)
  %19 = load i32*, i32** %6, align 8
  %20 = load %struct.omap_mbox_queue*, %struct.omap_mbox_queue** %9, align 8
  %21 = getelementptr inbounds %struct.omap_mbox_queue, %struct.omap_mbox_queue* %20, i32 0, i32 2
  %22 = call %struct.request_queue* @blk_init_queue(i32* %19, i32* %21)
  store %struct.request_queue* %22, %struct.request_queue** %8, align 8
  %23 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %24 = icmp ne %struct.request_queue* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  br label %39

26:                                               ; preds = %15
  %27 = load %struct.omap_mbox*, %struct.omap_mbox** %5, align 8
  %28 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %29 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %28, i32 0, i32 0
  store %struct.omap_mbox* %27, %struct.omap_mbox** %29, align 8
  %30 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %31 = load %struct.omap_mbox_queue*, %struct.omap_mbox_queue** %9, align 8
  %32 = getelementptr inbounds %struct.omap_mbox_queue, %struct.omap_mbox_queue* %31, i32 0, i32 1
  store %struct.request_queue* %30, %struct.request_queue** %32, align 8
  %33 = load %struct.omap_mbox_queue*, %struct.omap_mbox_queue** %9, align 8
  %34 = getelementptr inbounds %struct.omap_mbox_queue, %struct.omap_mbox_queue* %33, i32 0, i32 0
  %35 = load void (%struct.work_struct*)*, void (%struct.work_struct*)** %7, align 8
  %36 = bitcast void (%struct.work_struct*)* %35 to void (%struct.work_struct.0*)*
  %37 = call i32 @INIT_WORK(i32* %34, void (%struct.work_struct.0*)* %36)
  %38 = load %struct.omap_mbox_queue*, %struct.omap_mbox_queue** %9, align 8
  store %struct.omap_mbox_queue* %38, %struct.omap_mbox_queue** %4, align 8
  br label %42

39:                                               ; preds = %25
  %40 = load %struct.omap_mbox_queue*, %struct.omap_mbox_queue** %9, align 8
  %41 = call i32 @kfree(%struct.omap_mbox_queue* %40)
  store %struct.omap_mbox_queue* null, %struct.omap_mbox_queue** %4, align 8
  br label %42

42:                                               ; preds = %39, %26, %14
  %43 = load %struct.omap_mbox_queue*, %struct.omap_mbox_queue** %4, align 8
  ret %struct.omap_mbox_queue* %43
}

declare dso_local %struct.omap_mbox_queue* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.request_queue* @blk_init_queue(i32*, i32*) #1

declare dso_local i32 @INIT_WORK(i32*, void (%struct.work_struct.0*)*) #1

declare dso_local i32 @kfree(%struct.omap_mbox_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
