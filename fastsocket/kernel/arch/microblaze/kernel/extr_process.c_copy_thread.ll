; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/extr_process.c_copy_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/extr_process.c_copy_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.pt_regs = type { i64, i32, i64 }
%struct.thread_info = type { %struct.cpu_context }
%struct.cpu_context = type { i64, i64, i64 }

@THREAD_SIZE = common dso_local global i64 0, align 8
@ret_from_fork = common dso_local global i64 0, align 8
@CLONE_SETTLS = common dso_local global i64 0, align 8
@MSR_BIP = common dso_local global i32 0, align 4
@MSR_EE = common dso_local global i32 0, align 4
@MSR_EIP = common dso_local global i32 0, align 4
@MSR_IE = common dso_local global i32 0, align 4
@MSR_UMS = common dso_local global i32 0, align 4
@MSR_VM = common dso_local global i32 0, align 4
@MSR_VMS = common dso_local global i32 0, align 4
@STATE_SAVE_ARG_SPACE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_thread(i64 %0, i64 %1, i64 %2, %struct.task_struct* %3, %struct.pt_regs* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca %struct.pt_regs*, align 8
  %11 = alloca %struct.pt_regs*, align 8
  %12 = alloca %struct.thread_info*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.task_struct* %3, %struct.task_struct** %9, align 8
  store %struct.pt_regs* %4, %struct.pt_regs** %10, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %14 = call %struct.pt_regs* @task_pt_regs(%struct.task_struct* %13)
  store %struct.pt_regs* %14, %struct.pt_regs** %11, align 8
  %15 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %16 = call %struct.thread_info* @task_thread_info(%struct.task_struct* %15)
  store %struct.thread_info* %16, %struct.thread_info** %12, align 8
  %17 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %18 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %19 = bitcast %struct.pt_regs* %17 to i8*
  %20 = bitcast %struct.pt_regs* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 24, i1 false)
  %21 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %22 = call i64 @user_mode(%struct.pt_regs* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %5
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %27 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %35

28:                                               ; preds = %5
  %29 = load %struct.thread_info*, %struct.thread_info** %12, align 8
  %30 = ptrtoint %struct.thread_info* %29 to i64
  %31 = load i64, i64* @THREAD_SIZE, align 8
  %32 = add i64 %30, %31
  %33 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %34 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %28, %24
  %36 = load %struct.thread_info*, %struct.thread_info** %12, align 8
  %37 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %36, i32 0, i32 0
  %38 = call i32 @memset(%struct.cpu_context* %37, i32 0, i32 24)
  %39 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %40 = ptrtoint %struct.pt_regs* %39 to i64
  %41 = load %struct.thread_info*, %struct.thread_info** %12, align 8
  %42 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.cpu_context, %struct.cpu_context* %42, i32 0, i32 0
  store i64 %40, i64* %43, align 8
  %44 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %45 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = load %struct.thread_info*, %struct.thread_info** %12, align 8
  %49 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.cpu_context, %struct.cpu_context* %49, i32 0, i32 1
  store i64 %47, i64* %50, align 8
  %51 = load i64, i64* @ret_from_fork, align 8
  %52 = sub i64 %51, 8
  %53 = load %struct.thread_info*, %struct.thread_info** %12, align 8
  %54 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.cpu_context, %struct.cpu_context* %54, i32 0, i32 2
  store i64 %52, i64* %55, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* @CLONE_SETTLS, align 8
  %58 = and i64 %56, %57
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %35
  br label %61

61:                                               ; preds = %60, %35
  ret i32 0
}

declare dso_local %struct.pt_regs* @task_pt_regs(%struct.task_struct*) #1

declare dso_local %struct.thread_info* @task_thread_info(%struct.task_struct*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @memset(%struct.cpu_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
