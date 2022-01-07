; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_ptrace.c_ia64_syscall_get_set_arguments.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_ptrace.c_ia64_syscall_get_set_arguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.pt_regs = type { i32 }
%struct.syscall_get_set_args = type { i32, i32, i64*, i32, %struct.pt_regs* }
%struct.unw_frame_info = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ia64_syscall_get_set_arguments(%struct.task_struct* %0, %struct.pt_regs* %1, i32 %2, i32 %3, i64* %4, i32 %5) #0 {
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.pt_regs*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.syscall_get_set_args, align 8
  %14 = alloca %struct.unw_frame_info, align 4
  store %struct.task_struct* %0, %struct.task_struct** %7, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = getelementptr inbounds %struct.syscall_get_set_args, %struct.syscall_get_set_args* %13, i32 0, i32 0
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %15, align 8
  %17 = getelementptr inbounds %struct.syscall_get_set_args, %struct.syscall_get_set_args* %13, i32 0, i32 1
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.syscall_get_set_args, %struct.syscall_get_set_args* %13, i32 0, i32 2
  %20 = load i64*, i64** %11, align 8
  store i64* %20, i64** %19, align 8
  %21 = getelementptr inbounds %struct.syscall_get_set_args, %struct.syscall_get_set_args* %13, i32 0, i32 3
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.syscall_get_set_args, %struct.syscall_get_set_args* %13, i32 0, i32 4
  %24 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  store %struct.pt_regs* %24, %struct.pt_regs** %23, align 8
  %25 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %26 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %27 = icmp eq %struct.task_struct* %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %6
  %29 = call i32 @unw_init_running(i32 (%struct.unw_frame_info*, %struct.syscall_get_set_args*)* @syscall_get_set_args_cb, %struct.syscall_get_set_args* %13)
  br label %35

30:                                               ; preds = %6
  %31 = call i32 @memset(%struct.unw_frame_info* %14, i32 0, i32 4)
  %32 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %33 = call i32 @unw_init_from_blocked_task(%struct.unw_frame_info* %14, %struct.task_struct* %32)
  %34 = call i32 @syscall_get_set_args_cb(%struct.unw_frame_info* %14, %struct.syscall_get_set_args* %13)
  br label %35

35:                                               ; preds = %30, %28
  ret void
}

declare dso_local i32 @unw_init_running(i32 (%struct.unw_frame_info*, %struct.syscall_get_set_args*)*, %struct.syscall_get_set_args*) #1

declare dso_local i32 @syscall_get_set_args_cb(%struct.unw_frame_info*, %struct.syscall_get_set_args*) #1

declare dso_local i32 @memset(%struct.unw_frame_info*, i32, i32) #1

declare dso_local i32 @unw_init_from_blocked_task(%struct.unw_frame_info*, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
