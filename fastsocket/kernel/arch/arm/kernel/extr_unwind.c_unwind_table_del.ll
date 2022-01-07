; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_unwind.c_unwind_table_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_unwind.c_unwind_table_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_table = type { i32 }

@unwind_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unwind_table_del(%struct.unwind_table* %0) #0 {
  %2 = alloca %struct.unwind_table*, align 8
  %3 = alloca i64, align 8
  store %struct.unwind_table* %0, %struct.unwind_table** %2, align 8
  %4 = load %struct.unwind_table*, %struct.unwind_table** %2, align 8
  %5 = icmp ne %struct.unwind_table* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %17

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @spin_lock_irqsave(i32* @unwind_lock, i64 %8)
  %10 = load %struct.unwind_table*, %struct.unwind_table** %2, align 8
  %11 = getelementptr inbounds %struct.unwind_table, %struct.unwind_table* %10, i32 0, i32 0
  %12 = call i32 @list_del(i32* %11)
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @spin_unlock_irqrestore(i32* @unwind_lock, i64 %13)
  %15 = load %struct.unwind_table*, %struct.unwind_table** %2, align 8
  %16 = call i32 @kfree(%struct.unwind_table* %15)
  br label %17

17:                                               ; preds = %7, %6
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.unwind_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
