; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_ds.c_get_tracer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_ds.c_get_tracer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@ds_lock = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@tracers = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*)* @get_tracer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_tracer(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %4 = call i32 @spin_lock_irq(i32* @ds_lock)
  %5 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %6 = icmp ne %struct.task_struct* %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load i32, i32* @EPERM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %3, align 4
  %10 = call i64 @atomic_read(i32* @tracers)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %24

13:                                               ; preds = %7
  %14 = call i32 @atomic_inc(i32* @tracers)
  br label %23

15:                                               ; preds = %1
  %16 = load i32, i32* @EPERM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  %18 = call i64 @atomic_read(i32* @tracers)
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %24

21:                                               ; preds = %15
  %22 = call i32 @atomic_dec(i32* @tracers)
  br label %23

23:                                               ; preds = %21, %13
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %20, %12
  %25 = call i32 @spin_unlock_irq(i32* @ds_lock)
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
