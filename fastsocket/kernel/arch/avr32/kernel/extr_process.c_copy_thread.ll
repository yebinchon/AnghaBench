; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/kernel/extr_process.c_copy_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/kernel/extr_process.c_copy_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.pt_regs = type { i64, i64 }

@THREAD_SIZE = common dso_local global i64 0, align 8
@MODE_SUPERVISOR = common dso_local global i32 0, align 4
@SR_GM = common dso_local global i32 0, align 4
@ret_from_fork = common dso_local global i64 0, align 8
@TIF_DEBUG = common dso_local global i32 0, align 4
@CLONE_PTRACE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_thread(i64 %0, i64 %1, i64 %2, %struct.task_struct* %3, %struct.pt_regs* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca %struct.pt_regs*, align 8
  %11 = alloca %struct.pt_regs*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.task_struct* %3, %struct.task_struct** %9, align 8
  store %struct.pt_regs* %4, %struct.pt_regs** %10, align 8
  %12 = load i64, i64* @THREAD_SIZE, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %14 = call i64 @task_stack_page(%struct.task_struct* %13)
  %15 = add i64 %12, %14
  %16 = inttoptr i64 %15 to %struct.pt_regs*
  %17 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %16, i64 -1
  store %struct.pt_regs* %17, %struct.pt_regs** %11, align 8
  %18 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %19 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %20 = bitcast %struct.pt_regs* %18 to i8*
  %21 = bitcast %struct.pt_regs* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 16, i1 false)
  %22 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %23 = call i64 @user_mode(%struct.pt_regs* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %28 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %36

29:                                               ; preds = %5
  %30 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %31 = call i64 @task_stack_page(%struct.task_struct* %30)
  %32 = load i64, i64* @THREAD_SIZE, align 8
  %33 = add i64 %31, %32
  %34 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %35 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %29, %25
  %37 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %38 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* @MODE_SUPERVISOR, align 4
  %40 = load i32, i32* @SR_GM, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %43 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 8
  %46 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %47 = ptrtoint %struct.pt_regs* %46 to i64
  %48 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %49 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i64 %47, i64* %51, align 8
  %52 = load i64, i64* @ret_from_fork, align 8
  %53 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %54 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  store i64 %52, i64* %56, align 8
  %57 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %58 = load i32, i32* @TIF_DEBUG, align 4
  %59 = call i32 @clear_tsk_thread_flag(%struct.task_struct* %57, i32 %58)
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* @CLONE_PTRACE, align 8
  %62 = and i64 %60, %61
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %36
  %65 = load i32, i32* @TIF_DEBUG, align 4
  %66 = call i64 @test_thread_flag(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %70 = call i32 @ocd_enable(%struct.task_struct* %69)
  br label %71

71:                                               ; preds = %68, %64, %36
  ret i32 0
}

declare dso_local i64 @task_stack_page(%struct.task_struct*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @clear_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i64 @test_thread_flag(i32) #1

declare dso_local i32 @ocd_enable(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
