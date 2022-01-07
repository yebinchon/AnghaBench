; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_salinfo.c_salinfo_timeout_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_salinfo.c_salinfo_timeout_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.salinfo_data = type { i32, i32 }

@data_saved_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.salinfo_data*)* @salinfo_timeout_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @salinfo_timeout_check(%struct.salinfo_data* %0) #0 {
  %2 = alloca %struct.salinfo_data*, align 8
  %3 = alloca i64, align 8
  store %struct.salinfo_data* %0, %struct.salinfo_data** %2, align 8
  %4 = load %struct.salinfo_data*, %struct.salinfo_data** %2, align 8
  %5 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %22

9:                                                ; preds = %1
  %10 = load %struct.salinfo_data*, %struct.salinfo_data** %2, align 8
  %11 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @cpus_empty(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %9
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @spin_lock_irqsave(i32* @data_saved_lock, i64 %16)
  %18 = load %struct.salinfo_data*, %struct.salinfo_data** %2, align 8
  %19 = call i32 @salinfo_work_to_do(%struct.salinfo_data* %18)
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* @data_saved_lock, i64 %20)
  br label %22

22:                                               ; preds = %8, %15, %9
  ret void
}

declare dso_local i32 @cpus_empty(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @salinfo_work_to_do(%struct.salinfo_data*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
