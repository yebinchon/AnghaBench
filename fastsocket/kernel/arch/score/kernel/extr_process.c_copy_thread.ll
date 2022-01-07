; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/score/kernel/extr_process.c_copy_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/score/kernel/extr_process.c_copy_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, %struct.TYPE_2__, i32*, i32* }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.pt_regs = type { i64*, i32 }
%struct.thread_info = type { i32 }

@ret_from_fork = common dso_local global i64 0, align 8

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
  %17 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %18 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %17, i32 0, i32 3
  store i32* null, i32** %18, align 8
  %19 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %20 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %19, i32 0, i32 2
  store i32* null, i32** %20, align 8
  %21 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %22 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %23 = bitcast %struct.pt_regs* %21 to i8*
  %24 = bitcast %struct.pt_regs* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 16, i1 false)
  %25 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %26 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 7
  store i64 0, i64* %28, align 8
  %29 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %30 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 4
  store i64 0, i64* %32, align 8
  %33 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %34 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %37 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 4
  store i64 %35, i64* %39, align 8
  %40 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %41 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %5
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %48 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  store i64 %46, i64* %50, align 8
  br label %64

51:                                               ; preds = %5
  %52 = load %struct.thread_info*, %struct.thread_info** %11, align 8
  %53 = ptrtoint %struct.thread_info* %52 to i64
  %54 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %55 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 28
  store i64 %53, i64* %57, align 8
  %58 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %59 = ptrtoint %struct.pt_regs* %58 to i64
  %60 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %61 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  store i64 %59, i64* %63, align 8
  br label %64

64:                                               ; preds = %51, %45
  %65 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %66 = ptrtoint %struct.pt_regs* %65 to i64
  %67 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %68 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i64 %66, i64* %69, align 8
  %70 = load i64, i64* @ret_from_fork, align 8
  %71 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %72 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i64 %70, i64* %73, align 8
  %74 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %75 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  store i64 0, i64* %76, align 8
  ret i32 0
}

declare dso_local %struct.thread_info* @task_thread_info(%struct.task_struct*) #1

declare dso_local %struct.pt_regs* @task_pt_regs(%struct.task_struct*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
