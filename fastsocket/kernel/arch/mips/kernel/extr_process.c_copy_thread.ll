; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_process.c_copy_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_process.c_copy_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, %struct.TYPE_2__, i32*, i32 }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.pt_regs = type { i64*, i32, i32 }
%struct.thread_info = type { i64, i32 }

@THREAD_SIZE = common dso_local global i64 0, align 8
@cpu_has_dsp = common dso_local global i64 0, align 8
@ST0_CU0 = common dso_local global i32 0, align 4
@KERNEL_DS = common dso_local global i32 0, align 4
@USER_DS = common dso_local global i32 0, align 4
@ret_from_fork = common dso_local global i64 0, align 8
@ST0_CU2 = common dso_local global i32 0, align 4
@ST0_CU1 = common dso_local global i32 0, align 4
@TIF_USEDFPU = common dso_local global i32 0, align 4
@CLONE_SETTLS = common dso_local global i64 0, align 8
@TIF_FPUBOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_thread(i64 %0, i64 %1, i64 %2, %struct.task_struct* %3, %struct.pt_regs* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca %struct.pt_regs*, align 8
  %11 = alloca %struct.thread_info*, align 8
  %12 = alloca %struct.pt_regs*, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.task_struct* %3, %struct.task_struct** %9, align 8
  store %struct.pt_regs* %4, %struct.pt_regs** %10, align 8
  %14 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %15 = call %struct.thread_info* @task_thread_info(%struct.task_struct* %14)
  store %struct.thread_info* %15, %struct.thread_info** %11, align 8
  %16 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 2
  store i32* null, i32** %17, align 8
  %18 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %19 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %18, i32 0, i32 3
  store i32 0, i32* %19, align 8
  %20 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %21 = call i64 @task_stack_page(%struct.task_struct* %20)
  %22 = load i64, i64* @THREAD_SIZE, align 8
  %23 = add i64 %21, %22
  %24 = sub i64 %23, 32
  store i64 %24, i64* %13, align 8
  %25 = call i32 (...) @preempt_disable()
  %26 = call i64 (...) @is_fpu_owner()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %30 = call i32 @save_fp(%struct.task_struct* %29)
  br label %31

31:                                               ; preds = %28, %5
  %32 = load i64, i64* @cpu_has_dsp, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %36 = call i32 @save_dsp(%struct.task_struct* %35)
  br label %37

37:                                               ; preds = %34, %31
  %38 = call i32 (...) @preempt_enable()
  %39 = load i64, i64* %13, align 8
  %40 = inttoptr i64 %39 to %struct.pt_regs*
  %41 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %40, i64 -1
  store %struct.pt_regs* %41, %struct.pt_regs** %12, align 8
  %42 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %43 = ptrtoint %struct.pt_regs* %42 to i64
  store i64 %43, i64* %13, align 8
  %44 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %45 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %46 = bitcast %struct.pt_regs* %44 to i8*
  %47 = bitcast %struct.pt_regs* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 16, i1 false)
  %48 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %49 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 7
  store i64 0, i64* %51, align 8
  %52 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %53 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 2
  store i64 0, i64* %55, align 8
  %56 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %57 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %60 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 2
  store i64 %58, i64* %62, align 8
  %63 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %64 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @ST0_CU0, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %37
  %70 = load %struct.thread_info*, %struct.thread_info** %11, align 8
  %71 = ptrtoint %struct.thread_info* %70 to i64
  %72 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %73 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 28
  store i64 %71, i64* %75, align 8
  %76 = load i64, i64* %13, align 8
  %77 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %78 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 29
  store i64 %76, i64* %80, align 8
  %81 = load i32, i32* @KERNEL_DS, align 4
  %82 = load %struct.thread_info*, %struct.thread_info** %11, align 8
  %83 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  br label %93

84:                                               ; preds = %37
  %85 = load i64, i64* %7, align 8
  %86 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %87 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 29
  store i64 %85, i64* %89, align 8
  %90 = load i32, i32* @USER_DS, align 4
  %91 = load %struct.thread_info*, %struct.thread_info** %11, align 8
  %92 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %84, %69
  %94 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %95 = ptrtoint %struct.pt_regs* %94 to i64
  %96 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %97 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  store i64 %95, i64* %98, align 8
  %99 = load i64, i64* @ret_from_fork, align 8
  %100 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %101 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  store i64 %99, i64* %102, align 8
  %103 = call i32 (...) @read_c0_status()
  %104 = load i32, i32* @ST0_CU2, align 4
  %105 = load i32, i32* @ST0_CU1, align 4
  %106 = or i32 %104, %105
  %107 = xor i32 %106, -1
  %108 = and i32 %103, %107
  %109 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %110 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 2
  store i32 %108, i32* %111, align 8
  %112 = load i32, i32* @ST0_CU2, align 4
  %113 = load i32, i32* @ST0_CU1, align 4
  %114 = or i32 %112, %113
  %115 = xor i32 %114, -1
  %116 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %117 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = and i32 %118, %115
  store i32 %119, i32* %117, align 8
  %120 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %121 = load i32, i32* @TIF_USEDFPU, align 4
  %122 = call i32 @clear_tsk_thread_flag(%struct.task_struct* %120, i32 %121)
  %123 = load i64, i64* %6, align 8
  %124 = load i64, i64* @CLONE_SETTLS, align 8
  %125 = and i64 %123, %124
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %93
  %128 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %129 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %128, i32 0, i32 0
  %130 = load i64*, i64** %129, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 7
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.thread_info*, %struct.thread_info** %11, align 8
  %134 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  br label %135

135:                                              ; preds = %127, %93
  ret i32 0
}

declare dso_local %struct.thread_info* @task_thread_info(%struct.task_struct*) #1

declare dso_local i64 @task_stack_page(%struct.task_struct*) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i64 @is_fpu_owner(...) #1

declare dso_local i32 @save_fp(%struct.task_struct*) #1

declare dso_local i32 @save_dsp(%struct.task_struct*) #1

declare dso_local i32 @preempt_enable(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @read_c0_status(...) #1

declare dso_local i32 @clear_tsk_thread_flag(%struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
