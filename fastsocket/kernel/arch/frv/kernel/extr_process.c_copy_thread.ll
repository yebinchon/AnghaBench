; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_process.c_copy_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_process.c_copy_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64, i64, i64, i64, %struct.pt_regs*, i64 }
%struct.task_struct = type { %struct.TYPE_2__, i32*, i32 }
%struct.TYPE_2__ = type { i64, i64, i32, %struct.pt_regs*, i64, i64, %struct.task_struct*, %struct.pt_regs* }

@__kernel_frame0_ptr = common dso_local global %struct.pt_regs* null, align 8
@THREAD_SIZE = common dso_local global i64 0, align 8
@FRV_FRAME0_SIZE = common dso_local global i64 0, align 8
@ret_from_fork = common dso_local global i64 0, align 8
@CLONE_SETTLS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_thread(i64 %0, i64 %1, i64 %2, %struct.task_struct* %3, %struct.pt_regs* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca %struct.pt_regs*, align 8
  %11 = alloca %struct.pt_regs*, align 8
  %12 = alloca %struct.pt_regs*, align 8
  %13 = alloca %struct.pt_regs*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.task_struct* %3, %struct.task_struct** %9, align 8
  store %struct.pt_regs* %4, %struct.pt_regs** %10, align 8
  %14 = load %struct.pt_regs*, %struct.pt_regs** @__kernel_frame0_ptr, align 8
  store %struct.pt_regs* %14, %struct.pt_regs** %13, align 8
  %15 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %16 = call i64 @task_stack_page(%struct.task_struct* %15)
  %17 = load i64, i64* @THREAD_SIZE, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i64, i64* @FRV_FRAME0_SIZE, align 8
  %20 = sub nsw i64 %18, %19
  %21 = inttoptr i64 %20 to %struct.pt_regs*
  store %struct.pt_regs* %21, %struct.pt_regs** %11, align 8
  %22 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  store %struct.pt_regs* %22, %struct.pt_regs** %12, align 8
  %23 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %24 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  %25 = bitcast %struct.pt_regs* %23 to i8*
  %26 = bitcast %struct.pt_regs* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 48, i1 false)
  %27 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %28 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %27, i32 0, i32 5
  store i64 0, i64* %28, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %31 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %33 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %32, i32 0, i32 4
  store %struct.pt_regs* null, %struct.pt_regs** %33, align 8
  %34 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %35 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  %36 = icmp ne %struct.pt_regs* %34, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %5
  %38 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %39 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %38, i32 -1
  store %struct.pt_regs* %39, %struct.pt_regs** %12, align 8
  %40 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %41 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %42 = bitcast %struct.pt_regs* %40 to i8*
  %43 = bitcast %struct.pt_regs* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 48, i1 false)
  %44 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %45 = ptrtoint %struct.pt_regs* %44 to i64
  %46 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %47 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %49 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %50 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %49, i32 0, i32 4
  store %struct.pt_regs* %48, %struct.pt_regs** %50, align 8
  %51 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %52 = call i64 @task_thread_info(%struct.task_struct* %51)
  %53 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %54 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %56 = ptrtoint %struct.task_struct* %55 to i64
  %57 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %58 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %37, %5
  %60 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %61 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %60, i32 0, i32 1
  store i32* null, i32** %61, align 8
  %62 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %63 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %62, i32 0, i32 2
  store i32 0, i32* %63, align 8
  %64 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %65 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %66 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 7
  store %struct.pt_regs* %64, %struct.pt_regs** %67, align 8
  %68 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %69 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %70 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 6
  store %struct.task_struct* %68, %struct.task_struct** %71, align 8
  %72 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %73 = ptrtoint %struct.pt_regs* %72 to i64
  %74 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %75 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i64 %73, i64* %76, align 8
  %77 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %78 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 5
  store i64 0, i64* %79, align 8
  %80 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %81 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 4
  store i64 0, i64* %82, align 8
  %83 = load i64, i64* @ret_from_fork, align 8
  %84 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %85 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  store i64 %83, i64* %86, align 8
  %87 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %88 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %89 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 3
  store %struct.pt_regs* %87, %struct.pt_regs** %90, align 8
  %91 = load i64, i64* %6, align 8
  %92 = load i64, i64* @CLONE_SETTLS, align 8
  %93 = and i64 %91, %92
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %59
  %96 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %97 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %100 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %99, i32 0, i32 2
  store i64 %98, i64* %100, align 8
  br label %101

101:                                              ; preds = %95, %59
  %102 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %103 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @save_user_regs(i32 %105)
  ret i32 0
}

declare dso_local i64 @task_stack_page(%struct.task_struct*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @task_thread_info(%struct.task_struct*) #1

declare dso_local i32 @save_user_regs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
