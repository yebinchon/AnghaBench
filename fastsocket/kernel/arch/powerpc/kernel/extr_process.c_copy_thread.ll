; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_process.c_copy_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_process.c_copy_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.task_struct = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, %struct.pt_regs* }
%struct.pt_regs = type { i32, i64*, i64 }

@THREAD_SIZE = common dso_local global i64 0, align 8
@MSR_PR = common dso_local global i32 0, align 4
@TIF_32BIT = common dso_local global i32 0, align 4
@CLONE_SETTLS = common dso_local global i64 0, align 8
@STACK_FRAME_OVERHEAD = common dso_local global i64 0, align 8
@CPU_FTR_1T_SEGMENT = common dso_local global i32 0, align 4
@CPU_FTR_SLB = common dso_local global i32 0, align 4
@MMU_SEGSIZE_1T = common dso_local global i32 0, align 4
@MMU_SEGSIZE_256M = common dso_local global i32 0, align 4
@SLB_VSID_KERNEL = common dso_local global i64 0, align 8
@SLB_VSID_SHIFT = common dso_local global i64 0, align 8
@SLB_VSID_SHIFT_1T = common dso_local global i64 0, align 8
@mmu_linear_psize = common dso_local global i64 0, align 8
@mmu_psize_defs = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_thread(i64 %0, i64 %1, i64 %2, %struct.task_struct* %3, %struct.pt_regs* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca %struct.pt_regs*, align 8
  %11 = alloca %struct.pt_regs*, align 8
  %12 = alloca %struct.pt_regs*, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.task_struct* %3, %struct.task_struct** %9, align 8
  store %struct.pt_regs* %4, %struct.pt_regs** %10, align 8
  %14 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %15 = call i64 @task_stack_page(%struct.task_struct* %14)
  %16 = load i64, i64* @THREAD_SIZE, align 8
  %17 = add i64 %15, %16
  store i64 %17, i64* %13, align 8
  %18 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %19 = call i32 @CHECK_FULL_REGS(%struct.pt_regs* %18)
  %20 = load i64, i64* %13, align 8
  %21 = sub i64 %20, 24
  store i64 %21, i64* %13, align 8
  %22 = load i64, i64* %13, align 8
  %23 = inttoptr i64 %22 to %struct.pt_regs*
  store %struct.pt_regs* %23, %struct.pt_regs** %11, align 8
  %24 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %25 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %26 = bitcast %struct.pt_regs* %24 to i8*
  %27 = bitcast %struct.pt_regs* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 24, i1 false)
  %28 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %29 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @MSR_PR, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %5
  %35 = load i64, i64* %13, align 8
  %36 = add i64 %35, 24
  %37 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %38 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 1
  store i64 %36, i64* %40, align 8
  %41 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %42 = load i32, i32* @TIF_32BIT, align 4
  %43 = call i32 @clear_tsk_thread_flag(%struct.task_struct* %41, i32 %42)
  %44 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %45 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 3
  store %struct.pt_regs* null, %struct.pt_regs** %46, align 8
  br label %72

47:                                               ; preds = %5
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %50 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 1
  store i64 %48, i64* %52, align 8
  %53 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %54 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %55 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  store %struct.pt_regs* %53, %struct.pt_regs** %56, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* @CLONE_SETTLS, align 8
  %59 = and i64 %57, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %47
  %62 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %63 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 6
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %68 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 2
  store i64 %66, i64* %70, align 8
  br label %71

71:                                               ; preds = %61, %47
  br label %72

72:                                               ; preds = %71, %34
  %73 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %74 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 3
  store i64 0, i64* %76, align 8
  %77 = load i64, i64* @STACK_FRAME_OVERHEAD, align 8
  %78 = load i64, i64* %13, align 8
  %79 = sub i64 %78, %77
  store i64 %79, i64* %13, align 8
  %80 = load i64, i64* %13, align 8
  %81 = sub i64 %80, 24
  store i64 %81, i64* %13, align 8
  %82 = load i64, i64* %13, align 8
  %83 = inttoptr i64 %82 to %struct.pt_regs*
  store %struct.pt_regs* %83, %struct.pt_regs** %12, align 8
  %84 = load i64, i64* @STACK_FRAME_OVERHEAD, align 8
  %85 = load i64, i64* %13, align 8
  %86 = sub i64 %85, %84
  store i64 %86, i64* %13, align 8
  %87 = load i64, i64* %13, align 8
  %88 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %89 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store i64 %87, i64* %90, align 8
  %91 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %92 = call i64 @task_stack_page(%struct.task_struct* %91)
  %93 = call i64 @_ALIGN_UP(i32 4, i32 16)
  %94 = add i64 %92, %93
  %95 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %96 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 2
  store i64 %94, i64* %97, align 8
  %98 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %99 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %98, i32 0, i32 2
  store i64 ptrtoint (void ()* @ret_from_fork to i64), i64* %99, align 8
  ret i32 0
}

declare dso_local i64 @task_stack_page(%struct.task_struct*) #1

declare dso_local i32 @CHECK_FULL_REGS(%struct.pt_regs*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @clear_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i64 @_ALIGN_UP(i32, i32) #1

declare dso_local void @ret_from_fork() #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
