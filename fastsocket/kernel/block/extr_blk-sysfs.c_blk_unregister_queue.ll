; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-sysfs.c_blk_unregister_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-sysfs.c_blk_unregister_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { %struct.request_queue* }
%struct.request_queue = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }

@KOBJ_REMOVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_unregister_queue(%struct.gendisk* %0) #0 {
  %2 = alloca %struct.gendisk*, align 8
  %3 = alloca %struct.request_queue*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %2, align 8
  %4 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %5 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %4, i32 0, i32 0
  %6 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  store %struct.request_queue* %6, %struct.request_queue** %3, align 8
  %7 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %8 = icmp ne %struct.request_queue* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %37

14:                                               ; preds = %1
  %15 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %16 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %21 = call i32 @elv_unregister_queue(%struct.request_queue* %20)
  br label %22

22:                                               ; preds = %19, %14
  %23 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %24 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %23, i32 0, i32 0
  %25 = load i32, i32* @KOBJ_REMOVE, align 4
  %26 = call i32 @kobject_uevent(i32* %24, i32 %25)
  %27 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %28 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %27, i32 0, i32 0
  %29 = call i32 @kobject_del(i32* %28)
  %30 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %31 = call %struct.TYPE_3__* @disk_to_dev(%struct.gendisk* %30)
  %32 = call i32 @blk_trace_remove_sysfs(%struct.TYPE_3__* %31)
  %33 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %34 = call %struct.TYPE_3__* @disk_to_dev(%struct.gendisk* %33)
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i32 @kobject_put(i32* %35)
  br label %37

37:                                               ; preds = %22, %13
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @elv_unregister_queue(%struct.request_queue*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @kobject_del(i32*) #1

declare dso_local i32 @blk_trace_remove_sysfs(%struct.TYPE_3__*) #1

declare dso_local %struct.TYPE_3__* @disk_to_dev(%struct.gendisk*) #1

declare dso_local i32 @kobject_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
