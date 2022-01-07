; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_process.c_copy_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_process.c_copy_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.pt_regs = type { i64, i32, i64 }
%struct.thread_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@ret_from_fork = common dso_local global i64 0, align 8
@CLONE_SETTLS = common dso_local global i64 0, align 8

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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 24, i1 false)
  %21 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %22 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %25 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.thread_info*, %struct.thread_info** %11, align 8
  %27 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %26, i32 0, i32 1
  %28 = call i32 @memset(%struct.TYPE_2__* %27, i32 0, i32 4)
  %29 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %30 = ptrtoint %struct.pt_regs* %29 to i64
  %31 = load %struct.thread_info*, %struct.thread_info** %11, align 8
  %32 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i64 %30, i64* %33, align 8
  %34 = load i64, i64* @ret_from_fork, align 8
  %35 = load %struct.thread_info*, %struct.thread_info** %11, align 8
  %36 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i64 %34, i64* %37, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @CLONE_SETTLS, align 8
  %40 = and i64 %38, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %5
  %43 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %44 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.thread_info*, %struct.thread_info** %11, align 8
  %47 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %42, %5
  ret i32 0
}

declare dso_local %struct.thread_info* @task_thread_info(%struct.task_struct*) #1

declare dso_local %struct.pt_regs* @task_pt_regs(%struct.task_struct*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
