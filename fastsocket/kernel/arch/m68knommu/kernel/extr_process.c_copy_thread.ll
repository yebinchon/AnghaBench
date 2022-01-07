; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/kernel/extr_process.c_copy_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/kernel/extr_process.c_copy_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64*, i32 }
%struct.pt_regs = type { i64 }
%struct.switch_stack = type { i64 }
%struct.TYPE_4__ = type { i32 }

@THREAD_SIZE = common dso_local global i64 0, align 8
@ret_from_fork = common dso_local global i64 0, align 8
@FPU_IS_EMU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_thread(i64 %0, i64 %1, i64 %2, %struct.task_struct* %3, %struct.pt_regs* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca %struct.pt_regs*, align 8
  %11 = alloca %struct.pt_regs*, align 8
  %12 = alloca %struct.switch_stack*, align 8
  %13 = alloca %struct.switch_stack*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca %struct.TYPE_4__, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.task_struct* %3, %struct.task_struct** %9, align 8
  store %struct.pt_regs* %4, %struct.pt_regs** %10, align 8
  %16 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %17 = call i64 @task_stack_page(%struct.task_struct* %16)
  %18 = load i64, i64* @THREAD_SIZE, align 8
  %19 = add nsw i64 %17, %18
  %20 = inttoptr i64 %19 to %struct.pt_regs*
  %21 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %20, i64 -1
  store %struct.pt_regs* %21, %struct.pt_regs** %11, align 8
  %22 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %23 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %24 = bitcast %struct.pt_regs* %22 to i8*
  %25 = bitcast %struct.pt_regs* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 8, i1 false)
  %26 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %27 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %29 = bitcast %struct.pt_regs* %28 to i64*
  store i64* %29, i64** %14, align 8
  %30 = load i64*, i64** %14, align 8
  %31 = bitcast i64* %30 to %struct.switch_stack*
  %32 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %31, i64 -1
  store %struct.switch_stack* %32, %struct.switch_stack** %13, align 8
  %33 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %34 = bitcast %struct.pt_regs* %33 to %struct.switch_stack*
  %35 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %34, i64 -1
  store %struct.switch_stack* %35, %struct.switch_stack** %12, align 8
  %36 = load %struct.switch_stack*, %struct.switch_stack** %12, align 8
  %37 = load %struct.switch_stack*, %struct.switch_stack** %13, align 8
  %38 = bitcast %struct.switch_stack* %36 to i8*
  %39 = bitcast %struct.switch_stack* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 8, i1 false)
  %40 = load i64, i64* @ret_from_fork, align 8
  %41 = load %struct.switch_stack*, %struct.switch_stack** %12, align 8
  %42 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %45 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i64 %43, i64* %46, align 8
  %47 = load %struct.switch_stack*, %struct.switch_stack** %12, align 8
  %48 = ptrtoint %struct.switch_stack* %47 to i64
  %49 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %50 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i64 %48, i64* %51, align 8
  %52 = call i32 (...) @get_fs()
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %57 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  store i32 %55, i32* %58, align 8
  ret i32 0
}

declare dso_local i64 @task_stack_page(%struct.task_struct*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @get_fs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
