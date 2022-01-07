; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_ptrace.c_gpregs_writeback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_ptrace.c_gpregs_writeback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.user_regset = type { i32 }

@TIF_RESTORE_RSE = common dso_local global i32 0, align 4
@do_gpregs_writeback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.user_regset*, i32)* @gpregs_writeback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpregs_writeback(%struct.task_struct* %0, %struct.user_regset* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.user_regset*, align 8
  %7 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store %struct.user_regset* %1, %struct.user_regset** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %9 = load i32, i32* @TIF_RESTORE_RSE, align 4
  %10 = call i64 @test_and_set_tsk_thread_flag(%struct.task_struct* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %20

13:                                               ; preds = %3
  %14 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %15 = call i32 @set_notify_resume(%struct.task_struct* %14)
  %16 = load i32, i32* @do_gpregs_writeback, align 4
  %17 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %18 = load %struct.user_regset*, %struct.user_regset** %6, align 8
  %19 = call i32 @do_regset_call(i32 %16, %struct.task_struct* %17, %struct.user_regset* %18, i32 0, i32 0, i32* null, i32* null)
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %13, %12
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

declare dso_local i64 @test_and_set_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i32 @set_notify_resume(%struct.task_struct*) #1

declare dso_local i32 @do_regset_call(i32, %struct.task_struct*, %struct.user_regset*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
