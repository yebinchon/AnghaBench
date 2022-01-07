; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_process_32.c_copy_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_process_32.c_copy_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i32, i32 }
%struct.pt_regs = type { i64*, i64 }
%struct.thread_info = type { i32 }

@USER_DS = common dso_local global i32 0, align 4
@KERNEL_DS = common dso_local global i32 0, align 4
@CLONE_SETTLS = common dso_local global i64 0, align 8
@ret_from_fork = common dso_local global i64 0, align 8
@current = common dso_local global %struct.task_struct* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_thread(i64 %0, i64 %1, i64 %2, %struct.task_struct* %3, %struct.pt_regs* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca %struct.pt_regs*, align 8
  %11 = alloca %struct.thread_info*, align 8
  %12 = alloca %struct.pt_regs*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.task_struct* %3, %struct.task_struct** %9, align 8
  store %struct.pt_regs* %4, %struct.pt_regs** %10, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %14 = call %struct.thread_info* @task_thread_info(%struct.task_struct* %13)
  store %struct.thread_info* %14, %struct.thread_info** %11, align 8
  %15 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %16 = call %struct.pt_regs* @task_pt_regs(%struct.task_struct* %15)
  store %struct.pt_regs* %16, %struct.pt_regs** %12, align 8
  %17 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %18 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %19 = bitcast %struct.pt_regs* %17 to i8*
  %20 = bitcast %struct.pt_regs* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 16, i1 false)
  %21 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %22 = call i64 @user_mode(%struct.pt_regs* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %5
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %27 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 15
  store i64 %25, i64* %29, align 8
  %30 = load i32, i32* @USER_DS, align 4
  %31 = load %struct.thread_info*, %struct.thread_info** %11, align 8
  %32 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %43

33:                                               ; preds = %5
  %34 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %35 = ptrtoint %struct.pt_regs* %34 to i64
  %36 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %37 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 15
  store i64 %35, i64* %39, align 8
  %40 = load i32, i32* @KERNEL_DS, align 4
  %41 = load %struct.thread_info*, %struct.thread_info** %11, align 8
  %42 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %33, %24
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @CLONE_SETTLS, align 8
  %46 = and i64 %44, %45
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %50 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %55 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %48, %43
  %57 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %58 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  store i64 0, i64* %60, align 8
  %61 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %62 = ptrtoint %struct.pt_regs* %61 to i64
  %63 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %64 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i64 %62, i64* %65, align 8
  %66 = load i64, i64* @ret_from_fork, align 8
  %67 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %68 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i64 %66, i64* %69, align 8
  %70 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %71 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  store i64 0, i64* %72, align 8
  ret i32 0
}

declare dso_local %struct.thread_info* @task_thread_info(%struct.task_struct*) #1

declare dso_local %struct.pt_regs* @task_pt_regs(%struct.task_struct*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
