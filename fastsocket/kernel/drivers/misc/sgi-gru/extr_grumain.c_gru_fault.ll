; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grumain.c_gru_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grumain.c_gru_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.vm_fault = type { i64 }
%struct.gru_thread_state = type { i64, i32, i32, i32 }

@grudev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"vma %p, vaddr 0x%lx (0x%lx)\0A\00", align 1
@nopfn = common dso_local global i32 0, align 4
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@load_user_context = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@GRU_ASSIGN_DELAY = common dso_local global i32 0, align 4
@GRU_STEAL_DELAY = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@GRU_GSEG_PAGESIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_FAULT_NOPAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gru_fault(%struct.vm_area_struct* %0, %struct.vm_fault* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.vm_fault*, align 8
  %6 = alloca %struct.gru_thread_state*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store %struct.vm_fault* %1, %struct.vm_fault** %5, align 8
  %9 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %10 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %8, align 8
  %12 = load i32, i32* @grudev, align 4
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @GSEG_BASE(i64 %15)
  %17 = call i32 @gru_dbg(i32 %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.vm_area_struct* %13, i64 %14, i32 %16)
  %18 = load i32, i32* @nopfn, align 4
  %19 = call i32 @STAT(i32 %18)
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %23 = call i32 @TSID(i64 %21, %struct.vm_area_struct* %22)
  %24 = call %struct.gru_thread_state* @gru_find_thread_state(%struct.vm_area_struct* %20, i32 %23)
  store %struct.gru_thread_state* %24, %struct.gru_thread_state** %6, align 8
  %25 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  %26 = icmp ne %struct.gru_thread_state* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %28, i32* %3, align 4
  br label %98

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %66, %29
  %31 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  %32 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %31, i32 0, i32 1
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = call i32 (...) @preempt_disable()
  %35 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  %36 = call i32 @gru_check_context_placement(%struct.gru_thread_state* %35)
  %37 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  %38 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %92, label %41

41:                                               ; preds = %30
  %42 = load i32, i32* @load_user_context, align 4
  %43 = call i32 @STAT(i32 %42)
  %44 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  %45 = call i32 @gru_assign_gru_context(%struct.gru_thread_state* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %67, label %47

47:                                               ; preds = %41
  %48 = call i32 (...) @preempt_enable()
  %49 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  %50 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %49, i32 0, i32 1
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %53 = call i32 @set_current_state(i32 %52)
  %54 = load i32, i32* @GRU_ASSIGN_DELAY, align 4
  %55 = call i32 @schedule_timeout(i32 %54)
  %56 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  %57 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @GRU_STEAL_DELAY, align 8
  %60 = add nsw i64 %58, %59
  %61 = load i64, i64* @jiffies, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %47
  %64 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  %65 = call i32 @gru_steal_context(%struct.gru_thread_state* %64)
  br label %66

66:                                               ; preds = %63, %47
  br label %30

67:                                               ; preds = %41
  %68 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  %69 = call i32 @gru_load_context(%struct.gru_thread_state* %68)
  %70 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  %71 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  %74 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @gseg_physical_address(i32 %72, i32 %75)
  store i64 %76, i64* %7, align 8
  %77 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load i32, i32* @GRU_GSEG_PAGESIZE, align 4
  %80 = sub nsw i32 %79, 1
  %81 = xor i32 %80, -1
  %82 = sext i32 %81 to i64
  %83 = and i64 %78, %82
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* @PAGE_SHIFT, align 8
  %86 = lshr i64 %84, %85
  %87 = load i32, i32* @GRU_GSEG_PAGESIZE, align 4
  %88 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %89 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @remap_pfn_range(%struct.vm_area_struct* %77, i64 %83, i64 %86, i32 %87, i32 %90)
  br label %92

92:                                               ; preds = %67, %30
  %93 = call i32 (...) @preempt_enable()
  %94 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  %95 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %94, i32 0, i32 1
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %92, %27
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @gru_dbg(i32, i8*, %struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @GSEG_BASE(i64) #1

declare dso_local i32 @STAT(i32) #1

declare dso_local %struct.gru_thread_state* @gru_find_thread_state(%struct.vm_area_struct*, i32) #1

declare dso_local i32 @TSID(i64, %struct.vm_area_struct*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @gru_check_context_placement(%struct.gru_thread_state*) #1

declare dso_local i32 @gru_assign_gru_context(%struct.gru_thread_state*) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @gru_steal_context(%struct.gru_thread_state*) #1

declare dso_local i32 @gru_load_context(%struct.gru_thread_state*) #1

declare dso_local i64 @gseg_physical_address(i32, i32) #1

declare dso_local i32 @remap_pfn_range(%struct.vm_area_struct*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
