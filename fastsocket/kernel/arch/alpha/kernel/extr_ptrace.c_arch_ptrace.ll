; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_ptrace.c_arch_ptrace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_ptrace.c_arch_ptrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, i32 }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i64 0, align 8
@DBG_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"peek $%ld->%#lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"poke $%ld<-%#lx\0A\00", align 1
@TIF_SYSCALL_TRACE = common dso_local global i32 0, align 4
@EXIT_ZOMBIE = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @arch_ptrace(%struct.task_struct* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i64, i64* %6, align 8
  switch i64 %12, label %110 [
    i64 134, label %13
    i64 135, label %13
    i64 133, label %25
    i64 131, label %35
    i64 132, label %35
    i64 130, label %40
    i64 128, label %50
    i64 137, label %50
    i64 136, label %76
    i64 129, label %91
  ]

13:                                               ; preds = %4, %4
  %14 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i64 @access_process_vm(%struct.task_struct* %14, i64 %15, i64* %9, i32 8, i32 0)
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* @EIO, align 8
  %18 = sub nsw i64 0, %17
  store i64 %18, i64* %11, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp ne i64 %19, 8
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %116

22:                                               ; preds = %13
  %23 = call i32 (...) @force_successful_syscall_return()
  %24 = load i64, i64* %9, align 8
  store i64 %24, i64* %11, align 8
  br label %116

25:                                               ; preds = %4
  %26 = call i32 (...) @force_successful_syscall_return()
  %27 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @get_reg(%struct.task_struct* %27, i64 %28)
  store i64 %29, i64* %11, align 8
  %30 = load i32, i32* @DBG_MEM, align 4
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %11, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @DBG(i32 %30, i8* %33)
  br label %116

35:                                               ; preds = %4, %4
  %36 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call i64 @generic_ptrace_pokedata(%struct.task_struct* %36, i64 %37, i64 %38)
  store i64 %39, i64* %11, align 8
  br label %116

40:                                               ; preds = %4
  %41 = load i32, i32* @DBG_MEM, align 4
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 @DBG(i32 %41, i8* %44)
  %46 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i64 @put_reg(%struct.task_struct* %46, i64 %47, i64 %48)
  store i64 %49, i64* %11, align 8
  br label %116

50:                                               ; preds = %4, %4
  %51 = load i64, i64* @EIO, align 8
  %52 = sub nsw i64 0, %51
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @valid_signal(i64 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  br label %116

57:                                               ; preds = %50
  %58 = load i64, i64* %6, align 8
  %59 = icmp eq i64 %58, 128
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %62 = load i32, i32* @TIF_SYSCALL_TRACE, align 4
  %63 = call i32 @set_tsk_thread_flag(%struct.task_struct* %61, i32 %62)
  br label %68

64:                                               ; preds = %57
  %65 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %66 = load i32, i32* @TIF_SYSCALL_TRACE, align 4
  %67 = call i32 @clear_tsk_thread_flag(%struct.task_struct* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %60
  %69 = load i64, i64* %8, align 8
  %70 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %71 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %73 = call i32 @ptrace_cancel_bpt(%struct.task_struct* %72)
  %74 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %75 = call i32 @wake_up_process(%struct.task_struct* %74)
  store i64 0, i64* %11, align 8
  br label %116

76:                                               ; preds = %4
  store i64 0, i64* %11, align 8
  %77 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %78 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @EXIT_ZOMBIE, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %116

83:                                               ; preds = %76
  %84 = load i64, i64* @SIGKILL, align 8
  %85 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %86 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %88 = call i32 @ptrace_cancel_bpt(%struct.task_struct* %87)
  %89 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %90 = call i32 @wake_up_process(%struct.task_struct* %89)
  br label %116

91:                                               ; preds = %4
  %92 = load i64, i64* @EIO, align 8
  %93 = sub nsw i64 0, %92
  store i64 %93, i64* %11, align 8
  %94 = load i64, i64* %8, align 8
  %95 = call i32 @valid_signal(i64 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %91
  br label %116

98:                                               ; preds = %91
  %99 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %100 = call %struct.TYPE_2__* @task_thread_info(%struct.task_struct* %99)
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  store i32 -1, i32* %101, align 4
  %102 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %103 = load i32, i32* @TIF_SYSCALL_TRACE, align 4
  %104 = call i32 @clear_tsk_thread_flag(%struct.task_struct* %102, i32 %103)
  %105 = load i64, i64* %8, align 8
  %106 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %107 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  %108 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %109 = call i32 @wake_up_process(%struct.task_struct* %108)
  store i64 0, i64* %11, align 8
  br label %116

110:                                              ; preds = %4
  %111 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %112 = load i64, i64* %6, align 8
  %113 = load i64, i64* %7, align 8
  %114 = load i64, i64* %8, align 8
  %115 = call i64 @ptrace_request(%struct.task_struct* %111, i64 %112, i64 %113, i64 %114)
  store i64 %115, i64* %11, align 8
  br label %116

116:                                              ; preds = %110, %98, %97, %83, %82, %68, %56, %40, %35, %25, %22, %21
  %117 = load i64, i64* %11, align 8
  ret i64 %117
}

declare dso_local i64 @access_process_vm(%struct.task_struct*, i64, i64*, i32, i32) #1

declare dso_local i32 @force_successful_syscall_return(...) #1

declare dso_local i64 @get_reg(%struct.task_struct*, i64) #1

declare dso_local i32 @DBG(i32, i8*) #1

declare dso_local i64 @generic_ptrace_pokedata(%struct.task_struct*, i64, i64) #1

declare dso_local i64 @put_reg(%struct.task_struct*, i64, i64) #1

declare dso_local i32 @valid_signal(i64) #1

declare dso_local i32 @set_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i32 @clear_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i32 @ptrace_cancel_bpt(%struct.task_struct*) #1

declare dso_local i32 @wake_up_process(%struct.task_struct*) #1

declare dso_local %struct.TYPE_2__* @task_thread_info(%struct.task_struct*) #1

declare dso_local i64 @ptrace_request(%struct.task_struct*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
