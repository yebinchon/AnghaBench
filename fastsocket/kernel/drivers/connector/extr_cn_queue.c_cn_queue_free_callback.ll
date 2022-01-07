; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/connector/extr_cn_queue.c_cn_queue_free_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/connector/extr_cn_queue.c_cn_queue_free_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cn_callback_entry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cn_callback_entry*)* @cn_queue_free_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cn_queue_free_callback(%struct.cn_callback_entry* %0) #0 {
  %2 = alloca %struct.cn_callback_entry*, align 8
  store %struct.cn_callback_entry* %0, %struct.cn_callback_entry** %2, align 8
  %3 = call i32 (...) @flush_scheduled_work()
  %4 = load %struct.cn_callback_entry*, %struct.cn_callback_entry** %2, align 8
  %5 = getelementptr inbounds %struct.cn_callback_entry, %struct.cn_callback_entry* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.cn_callback_entry*, %struct.cn_callback_entry** %2, align 8
  %12 = getelementptr inbounds %struct.cn_callback_entry, %struct.cn_callback_entry* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @flush_workqueue(i64 %15)
  br label %17

17:                                               ; preds = %10, %1
  %18 = load %struct.cn_callback_entry*, %struct.cn_callback_entry** %2, align 8
  %19 = call i32 @kfree(%struct.cn_callback_entry* %18)
  ret void
}

declare dso_local i32 @flush_scheduled_work(...) #1

declare dso_local i32 @flush_workqueue(i64) #1

declare dso_local i32 @kfree(%struct.cn_callback_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
