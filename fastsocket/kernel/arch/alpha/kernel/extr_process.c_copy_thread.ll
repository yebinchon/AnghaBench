; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_process.c_copy_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_process.c_copy_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.pt_regs = type { i32, i64, i64, i64 }
%struct.thread_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32, i64 }
%struct.switch_stack = type { i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
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
  %13 = alloca %struct.switch_stack*, align 8
  %14 = alloca %struct.switch_stack*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.task_struct* %3, %struct.task_struct** %9, align 8
  store %struct.pt_regs* %4, %struct.pt_regs** %10, align 8
  %17 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %18 = call %struct.thread_info* @task_thread_info(%struct.task_struct* %17)
  store %struct.thread_info* %18, %struct.thread_info** %11, align 8
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = sext i32 %19 to i64
  %21 = sub i64 %20, 32
  store i64 %21, i64* %15, align 8
  %22 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %23 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %5
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %32 = ptrtoint %struct.pt_regs* %31 to i64
  %33 = and i64 %30, %32
  store i64 %33, i64* %15, align 8
  br label %34

34:                                               ; preds = %27, %5
  %35 = load i64, i64* %15, align 8
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = sext i32 %36 to i64
  %38 = add i64 %35, %37
  %39 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %40 = call i64 @task_stack_page(%struct.task_struct* %39)
  %41 = add i64 %38, %40
  %42 = inttoptr i64 %41 to %struct.pt_regs*
  store %struct.pt_regs* %42, %struct.pt_regs** %12, align 8
  %43 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %44 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %45 = bitcast %struct.pt_regs* %43 to i8*
  %46 = bitcast %struct.pt_regs* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 32, i1 false)
  %47 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %48 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %16, align 8
  %50 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %51 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %50, i32 0, i32 3
  store i64 0, i64* %51, align 8
  %52 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %53 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %55 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %54, i32 0, i32 1
  store i64 1, i64* %55, align 8
  %56 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %57 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %59 = bitcast %struct.pt_regs* %58 to %struct.switch_stack*
  %60 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %59, i64 -1
  store %struct.switch_stack* %60, %struct.switch_stack** %14, align 8
  %61 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %62 = bitcast %struct.pt_regs* %61 to %struct.switch_stack*
  %63 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %62, i64 -1
  store %struct.switch_stack* %63, %struct.switch_stack** %13, align 8
  %64 = load %struct.switch_stack*, %struct.switch_stack** %13, align 8
  %65 = load %struct.switch_stack*, %struct.switch_stack** %14, align 8
  %66 = bitcast %struct.switch_stack* %64 to i8*
  %67 = bitcast %struct.switch_stack* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 %67, i64 8, i1 false)
  %68 = load %struct.switch_stack*, %struct.switch_stack** %13, align 8
  %69 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %68, i32 0, i32 0
  store i64 ptrtoint (void ()* @ret_from_fork to i64), i64* %69, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load %struct.thread_info*, %struct.thread_info** %11, align 8
  %72 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i64 %70, i64* %73, align 8
  %74 = load %struct.switch_stack*, %struct.switch_stack** %13, align 8
  %75 = ptrtoint %struct.switch_stack* %74 to i64
  %76 = load %struct.thread_info*, %struct.thread_info** %11, align 8
  %77 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  store i64 %75, i64* %78, align 8
  %79 = load %struct.thread_info*, %struct.thread_info** %11, align 8
  %80 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  store i32 1, i32* %81, align 8
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* @CLONE_SETTLS, align 8
  %84 = and i64 %82, %83
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %34
  %87 = load i64, i64* %16, align 8
  %88 = load %struct.thread_info*, %struct.thread_info** %11, align 8
  %89 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 3
  store i64 %87, i64* %90, align 8
  br label %91

91:                                               ; preds = %86, %34
  ret i32 0
}

declare dso_local %struct.thread_info* @task_thread_info(%struct.task_struct*) #1

declare dso_local i64 @task_stack_page(%struct.task_struct*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @ret_from_fork() #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
