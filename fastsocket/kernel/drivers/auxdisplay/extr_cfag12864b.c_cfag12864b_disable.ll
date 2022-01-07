; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/auxdisplay/extr_cfag12864b.c_cfag12864b_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/auxdisplay/extr_cfag12864b.c_cfag12864b_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cfag12864b_mutex = common dso_local global i32 0, align 4
@cfag12864b_updating = common dso_local global i64 0, align 8
@cfag12864b_work = common dso_local global i32 0, align 4
@cfag12864b_workqueue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfag12864b_disable() #0 {
  %1 = call i32 @mutex_lock(i32* @cfag12864b_mutex)
  %2 = load i64, i64* @cfag12864b_updating, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  store i64 0, i64* @cfag12864b_updating, align 8
  %5 = call i32 @cancel_delayed_work(i32* @cfag12864b_work)
  %6 = load i32, i32* @cfag12864b_workqueue, align 4
  %7 = call i32 @flush_workqueue(i32 %6)
  br label %8

8:                                                ; preds = %4, %0
  %9 = call i32 @mutex_unlock(i32* @cfag12864b_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
