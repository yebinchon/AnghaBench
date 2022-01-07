; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-log.c_put_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-log.c_put_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_dirty_log_type = type { i32, i32 }

@_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_dirty_log_type*)* @put_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_type(%struct.dm_dirty_log_type* %0) #0 {
  %2 = alloca %struct.dm_dirty_log_type*, align 8
  store %struct.dm_dirty_log_type* %0, %struct.dm_dirty_log_type** %2, align 8
  %3 = load %struct.dm_dirty_log_type*, %struct.dm_dirty_log_type** %2, align 8
  %4 = icmp ne %struct.dm_dirty_log_type* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %21

6:                                                ; preds = %1
  %7 = call i32 @spin_lock(i32* @_lock)
  %8 = load %struct.dm_dirty_log_type*, %struct.dm_dirty_log_type** %2, align 8
  %9 = getelementptr inbounds %struct.dm_dirty_log_type, %struct.dm_dirty_log_type* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @__find_dirty_log_type(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  br label %19

14:                                               ; preds = %6
  %15 = load %struct.dm_dirty_log_type*, %struct.dm_dirty_log_type** %2, align 8
  %16 = getelementptr inbounds %struct.dm_dirty_log_type, %struct.dm_dirty_log_type* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @module_put(i32 %17)
  br label %19

19:                                               ; preds = %14, %13
  %20 = call i32 @spin_unlock(i32* @_lock)
  br label %21

21:                                               ; preds = %19, %5
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__find_dirty_log_type(i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
