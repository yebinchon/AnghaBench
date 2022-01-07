; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bio-prison.c_dm_deferred_entry_inc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bio-prison.c_dm_deferred_entry_inc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_deferred_entry = type { i32 }
%struct.dm_deferred_set = type { i32, i32, %struct.dm_deferred_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dm_deferred_entry* @dm_deferred_entry_inc(%struct.dm_deferred_set* %0) #0 {
  %2 = alloca %struct.dm_deferred_set*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.dm_deferred_entry*, align 8
  store %struct.dm_deferred_set* %0, %struct.dm_deferred_set** %2, align 8
  %5 = load %struct.dm_deferred_set*, %struct.dm_deferred_set** %2, align 8
  %6 = getelementptr inbounds %struct.dm_deferred_set, %struct.dm_deferred_set* %5, i32 0, i32 1
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.dm_deferred_set*, %struct.dm_deferred_set** %2, align 8
  %10 = getelementptr inbounds %struct.dm_deferred_set, %struct.dm_deferred_set* %9, i32 0, i32 2
  %11 = load %struct.dm_deferred_entry*, %struct.dm_deferred_entry** %10, align 8
  %12 = load %struct.dm_deferred_set*, %struct.dm_deferred_set** %2, align 8
  %13 = getelementptr inbounds %struct.dm_deferred_set, %struct.dm_deferred_set* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.dm_deferred_entry, %struct.dm_deferred_entry* %11, i64 %15
  store %struct.dm_deferred_entry* %16, %struct.dm_deferred_entry** %4, align 8
  %17 = load %struct.dm_deferred_entry*, %struct.dm_deferred_entry** %4, align 8
  %18 = getelementptr inbounds %struct.dm_deferred_entry, %struct.dm_deferred_entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.dm_deferred_set*, %struct.dm_deferred_set** %2, align 8
  %22 = getelementptr inbounds %struct.dm_deferred_set, %struct.dm_deferred_set* %21, i32 0, i32 1
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load %struct.dm_deferred_entry*, %struct.dm_deferred_entry** %4, align 8
  ret %struct.dm_deferred_entry* %25
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
