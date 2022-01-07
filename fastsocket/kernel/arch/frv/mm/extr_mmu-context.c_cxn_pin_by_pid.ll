; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/frv/mm/extr_mmu-context.c_cxn_pin_by_pid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/frv/mm/extr_mmu-context.c_cxn_pin_by_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.mm_struct* }
%struct.mm_struct = type { i32, i32 }

@cxn_pinned = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@tasklist_lock = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@cxn_owners_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxn_pin_by_pid(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.mm_struct* null, %struct.mm_struct** %5, align 8
  %7 = load i64, i64* %3, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 -1, i32* @cxn_pinned, align 4
  store i32 0, i32* %2, align 4
  br label %51

10:                                               ; preds = %1
  %11 = load i32, i32* @ESRCH, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %6, align 4
  %13 = call i32 @read_lock(i32* @tasklist_lock)
  %14 = load i64, i64* %3, align 8
  %15 = call %struct.task_struct* @find_task_by_vpid(i64 %14)
  store %struct.task_struct* %15, %struct.task_struct** %4, align 8
  %16 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %17 = icmp ne %struct.task_struct* %16, null
  br i1 %17, label %18, label %37

18:                                               ; preds = %10
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  %21 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %22 = call i32 @task_lock(%struct.task_struct* %21)
  %23 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %24 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %23, i32 0, i32 0
  %25 = load %struct.mm_struct*, %struct.mm_struct** %24, align 8
  %26 = icmp ne %struct.mm_struct* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %18
  %28 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %29 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %28, i32 0, i32 0
  %30 = load %struct.mm_struct*, %struct.mm_struct** %29, align 8
  store %struct.mm_struct* %30, %struct.mm_struct** %5, align 8
  %31 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %32 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %31, i32 0, i32 1
  %33 = call i32 @atomic_inc(i32* %32)
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %27, %18
  %35 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %36 = call i32 @task_unlock(%struct.task_struct* %35)
  br label %37

37:                                               ; preds = %34, %10
  %38 = call i32 @read_unlock(i32* @tasklist_lock)
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %51

43:                                               ; preds = %37
  %44 = call i32 @spin_lock(i32* @cxn_owners_lock)
  %45 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %46 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %45, i32 0, i32 0
  %47 = call i32 @get_cxn(i32* %46)
  store i32 %47, i32* @cxn_pinned, align 4
  %48 = call i32 @spin_unlock(i32* @cxn_owners_lock)
  %49 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %50 = call i32 @mmput(%struct.mm_struct* %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %43, %41, %9
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.task_struct* @find_task_by_vpid(i64) #1

declare dso_local i32 @task_lock(%struct.task_struct*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @get_cxn(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
